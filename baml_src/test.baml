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

test SampleTest {
    functions [CategorizeCardTransaction]
    args {
        transaction {
                id "3"
                amount 1989.73
                timestamp "2021-03-09"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Hal's Bakery"
                location "New York"
                status "Declined"
            }

        prevTransactionContext [
            {
                id "1"
                amount 104.63
                timestamp "2021-03-02"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Amazon"
                location "New York"
                status "Approved"
            }
            {
                id "2"
                amount 15.23
                timestamp "2021-03-05"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Amazon"
                location "New York"
                status "Approved"
            }
            {
                id "3"
                amount 23.67
                timestamp "2021-03-07"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "L'Industrie Pizzeria"
                location "New York"
                status "Approved"
            }
        ]
        ruleContext "Reject all transactions over $1500" 
    }
    @@assert({{ this.categorization == "Fraud" or this.categorization == "Normal" or this.categorization == "Unknown" }})
}
