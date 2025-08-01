import json
import chromadb
from typing import List, Dict, Any, Optional

def ingest_card_fraud_rules(file_path: str):
    # Initialize ChromaDB client
    client = chromadb.Client()

    # Create or get a collection
    collection = client.get_or_create_collection("card_fraud_rules")

    # Load JSONL file
    with open(file_path, "r") as f:
        lines = [json.loads(line) for line in f]

    # Prepare data for ingestion
    documents = [entry["text"] for entry in lines]
    metadatas = [entry["metadata"] for entry in lines]
    ids = [f"doc_{i}" for i in range(len(documents))]  # simple IDs

    # Ingest into ChromaDB
    collection.add(documents=documents, metadatas=metadatas, ids=ids)

    print(f"Ingested {len(documents)} documents into 'card_fraud_rules' collection.")

class ChromaClient:
    def __init__(self, collection_name: str = "card_fraud_rules"):
        self.client = chromadb.Client()
        self.collection_name = collection_name
        self.collection = self.client.get_or_create_collection(collection_name)
    
    def query(self, query_text: str, n_results: int = 10) -> Dict[str, Any]:
        """Query the collection for similar documents"""
        results = self.collection.query(
            query_texts=[query_text],
            n_results=n_results
        )
        return results
    
    def get_all_documents(self) -> Dict[str, Any]:
        """Get all documents from the collection"""
        return self.collection.get()
    
    def get_by_ids(self, ids: List[str]) -> Dict[str, Any]:
        """Get documents by their IDs"""
        return self.collection.get(ids=ids)
    
    def get_collection_info(self) -> Dict[str, Any]:
        """Get information about the collection"""
        return {
            "name": self.collection_name,
            "count": self.collection.count()
        }

if __name__ == "__main__":
    ingest_card_fraud_rules()