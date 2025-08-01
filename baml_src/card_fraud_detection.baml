class CardFraudDetectionResponse {
    reasons string[] @description(#"
        The reasons for the categorization. This is a list of strings that describe the reasons for the categorization.
    "#)
    categorization CardTransactionCategorization @description(#"
        The categorization of the transaction. This is a string that describes the categorization of the transaction.
    "#)
}

class CardTransaction {
    id string
    amount float
    timestamp string
    user_id string
    card_number string
    card_type string
    card_issuer string
    merchant_name string
    location string
    status CardTransactionStatus
}

enum CardTransactionStatus {
    Pending
    Approved
    Declined
    Failed
}

enum CardTransactionCategorization {
  Fraud
  Normal
  Unknown
}

function CategorizeCardTransaction(transaction: CardTransaction, prevTransactionContext: CardTransaction[], ruleContext: string) -> CardFraudDetectionResponse {
    client "openai/gpt-4.1"
    prompt #"
    You are a fraud detection system. Analyze the provided transaction, as well as the previous transaction context, and classify it as one of three categories:
    **Fraud** - Strong indicators of fraudulent activity
    **Normal** - Appears to be legitimate transaction  
    **Unknown** - Insufficient information or mixed signals

    Consider factors like:
    - Transaction amount vs. typical spending patterns
    - Location/time anomalies
    - Merchant type consistency
    - Velocity of transactions
    - Account behavior patterns

    Return only the category name. If multiple factors conflict or data is incomplete, choose "Unknown" rather than guessing.
    
    Context documents - use these to help you determine the category:
    ---
    {{ ruleContext }}
    ---

    Transaction data
    ---
    {{ transaction }}
    ---
    {{ prevTransactionContext }}
    ---
    {{ ctx.output_format }}
    "#

}
