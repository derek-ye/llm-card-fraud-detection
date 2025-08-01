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
