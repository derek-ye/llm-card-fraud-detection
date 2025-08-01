test FiveTransactionsIn2MinsButLowSpending {
    functions [CategorizeCardTransaction]
    args {
        transaction {
                id "txn_006"
                amount 30.73
                timestamp "2021-03-09T14:31:55"
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
                id "txn_001"
                amount 25.99
                timestamp "2021-03-09T14:30:15"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Coffee Shop"
                location "New York"
                status "Approved"
            }
            {
                id "txn_002"
                amount 50.00
                timestamp "2021-03-09T14:30:45"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Gas Station"
                location "New York"
                status "Approved"
            }
            {
                id "txn_003"
                amount 120.50
                timestamp "2021-03-09T14:31:05"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Electronics Store"
                location "New York"
                status "Declined"
            }
            {
                id "txn_004"
                amount 75.25
                timestamp "2021-03-09T14:31:30"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Restaurant"
                location "New York"
                status "Declined"
            }
            {
                id "txn_005"
                amount 200.00
                timestamp "2021-03-09T14:31:55"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Clothing Store"
                location "New York"
                status "Declined"
            }
        ]
        ruleContext "5+ attempts in 2 mins, total amount >= $5000, avg risk score >= 500; exclude high volume merchants." 
    }
    @@assert({{ this.categorization == "Normal" or this.categorization == "Unknown" }})
}

test FiveTransactionsIn2MinsButHighSpending {
    functions [CategorizeCardTransaction]
    args {
        transaction {
                id "txn_006"
                amount 1850.59
                timestamp "2021-03-09T14:31:55"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Facebook"
                location "New York"
                status "Declined"
            }

        prevTransactionContext [
            {
                id "txn_001"
                amount 1832.79
                timestamp "2021-03-09T14:30:15"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Facebook"
                location "New York"
                status "Approved"
            }
            {
                id "txn_002"
                amount 1050.25
                timestamp "2021-03-09T14:30:45"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Facebook"
                location "New York"
                status "Approved"
            }
            {
                id "txn_003"
                amount 920.50
                timestamp "2021-03-09T14:31:05"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Facebook"
                location "New York"
                status "Declined"
            }
            {
                id "txn_004"
                amount 75.25
                timestamp "2021-03-09T14:31:30"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Due Cucina"
                location "New York"
                status "Declined"
            }
            {
                id "txn_005"
                amount 150.26
                timestamp "2021-03-09T14:31:55"
                user_id "1"
                card_number "1234567890"
                card_type "Visa"
                card_issuer "Bank of America"
                merchant_name "Buck Mason"
                location "New York"
                status "Declined"
            }
        ]
        ruleContext "5+ attempts in 2 mins, total amount >= $5000, avg risk score >= 500; exclude high volume merchants." 
    }
    @@assert({{ this.categorization == "Fraud" }})
}
