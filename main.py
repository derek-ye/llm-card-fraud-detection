from baml.types import CategorizeCardTransaction
from baml.client import b


def categorize_card_transaction(transaction: CardTransaction, prev_transactions: list[CardTransaction]) -> CardFraudDetectionResponse:
    return b.CategorizeCardTransaction(transaction, prev_transactions)

// write me a simple flask app that has a route that takes a json payload and returns a json payload

