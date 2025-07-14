from fastapi import FastAPI
from pydantic import BaseModel
from typing import List
from baml_client.types import CardTransaction, CardFraudDetectionResponse
from baml_client import b

app = FastAPI(title="Card Fraud Detection API", version="1.0.0")

class TransactionRequest(BaseModel):
    transaction: CardTransaction
    prev_transactions: List[CardTransaction] = []

@app.get("/")
async def root():
    return {"message": "Card Fraud Detection API"}

@app.post("/categorize", response_model=CardFraudDetectionResponse)
async def categorize_transaction(request: TransactionRequest):
    """Categorize a card transaction as fraud, normal, or unknown."""
    return b.CategorizeCardTransaction(request.transaction, request.prev_transactions)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
