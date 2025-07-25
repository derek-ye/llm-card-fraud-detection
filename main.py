from fastapi import FastAPI
from pydantic import BaseModel
from typing import List
from baml_client.types import CardTransaction, CardFraudDetectionResponse
from baml_client import b
from rag_example.document_retreiver import DocumentRetriever

app = FastAPI(title="Card Fraud Detection API", version="1.0.0")
retriever = DocumentRetriever()

class TransactionRequest(BaseModel):
    transaction: CardTransaction
    prev_transactions: List[CardTransaction] = []

class RuleRequest(BaseModel):
    document: str

@app.get("/")
async def root():
    return {"message": "Card Fraud Detection API"}

@app.get("/example-card-fraud-detection")
async def example_card_fraud_detection():
    # Main transaction from test.baml
    transaction = CardTransaction(
        id="3",
        amount=1989.73,
        timestamp="2021-03-09",
        user_id="1",
        card_number="1234567890",
        card_type="Visa",
        card_issuer="Bank of America",
        merchant_name="Hal's Bakery",
        location="New York",
        status="Declined"
    )
    relevant_document = retriever.retrieve(str(transaction))
    
    # Previous transaction context from test.baml
    added_transaction_context = [
        CardTransaction(
            id="1",
            amount=104.63,
            timestamp="2021-03-02",
            user_id="1",
            card_number="1234567890",
            card_type="Visa",
            card_issuer="Bank of America",
            merchant_name="Amazon",
            location="New York",
            status="Approved"
        ),
        CardTransaction(
            id="2",
            amount=15.23,
            timestamp="2021-03-05",
            user_id="1",
            card_number="1234567890",
            card_type="Visa",
            card_issuer="Bank of America",
            merchant_name="Amazon",
            location="New York",
            status="Approved"
        ),
        CardTransaction(
            id="3",
            amount=23.67,
            timestamp="2021-03-07",
            user_id="1",
            card_number="1234567890",
            card_type="Visa",
            card_issuer="Bank of America",
            merchant_name="L'Industrie Pizzeria",
            location="New York",
            status="Approved"
        )
    ]
    
    return await b.CategorizeCardTransaction(transaction, added_transaction_context, relevant_document)

@app.post("/categorize", response_model=CardFraudDetectionResponse)
async def categorize_transaction(request: TransactionRequest):
    """Categorize a card transaction as fraud, normal, or unknown."""
    return b.CategorizeCardTransaction(request.transaction, request.prev_transactions)

@app.post("/add_card_fraud_rule")
async def add_card_fraud_rule(request: RuleRequest):
    """Add a new fraud detection rule document to the knowledge base."""
    # Call the document retriever to add the document
    retriever.add_documents([request.document])
    return {"message": "Fraud rule document added successfully", "document": request.document}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
