# retrieval.py
import chromadb
from sentence_transformers import SentenceTransformer

class DocumentRetriever:
    def __init__(self):
        self.client = chromadb.Client()
        self.collection = self.client.create_collection("card-fraud-rules")
        self.encoder = SentenceTransformer('all-MiniLM-L6-v2')
    
    def add_documents(self, documents):
        embeddings = self.encoder.encode(documents)
        self.collection.add(
            embeddings=embeddings,
            documents=documents,
            ids=[f"doc_{i}" for i in range(len(documents))]
        )
    
    def retrieve(self, query, k=3):
        query_embedding = self.encoder.encode([query])
        results = self.collection.query(
            query_embeddings=query_embedding,
            n_results=k
        )
        return results['documents'][0]