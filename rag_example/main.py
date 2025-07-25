# main.py
from baml_client import baml
from retrieval import DocumentRetriever

async def rag_pipeline(query: str):
    # Step 1: Retrieve relevant documents
    retriever = DocumentRetriever()
    relevant_docs = retriever.retrieve(query, k=3)
    
    # Step 2: Use BAML to generate structured response
    context = baml.Context(
        documents=relevant_docs,
        query=query
    )
    
    response = await baml.AnswerWithContext(context)
    return response

# Usage
result = await rag_pipeline("What are the benefits of renewable energy?")
print(f"Answer: {result.answer}")
print(f"Sources: {result.sources_used}")