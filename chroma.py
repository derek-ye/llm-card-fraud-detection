import json
import chromadb

# Initialize ChromaDB client
client = chromadb.Client()

# Create or get a collection
collection = client.get_or_create_collection("fraud_vectors")

# Load JSONL file
with open("fraud_vectors_for_chromadb.jsonl", "r") as f:
    lines = [json.loads(line) for line in f]

# Prepare data for ingestion
documents = [entry["text"] for entry in lines]
metadatas = [entry["metadata"] for entry in lines]
ids = [f"doc_{i}" for i in range(len(documents))]  # simple IDs

# Ingest into ChromaDB
collection.add(documents=documents, metadatas=metadatas, ids=ids)

print(f"Ingested {len(documents)} documents into 'fraud_vectors' collection.")