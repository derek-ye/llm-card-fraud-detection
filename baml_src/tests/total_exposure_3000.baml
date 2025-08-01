test HighExposureFraudTest {
    functions [CategorizeCardTransaction]
    args {
        transaction {
                id "5"
                amount 400.00
                timestamp "2024-08-01T14:09:00Z"
                user_id "user_456"
                card_number "4532987654321098"
                card_type "Visa"
                card_issuer "Wells Fargo"
                merchant_name "Electronics Store"
                location "Los Angeles"
                status "Pending"
            }

        prevTransactionContext [
            {
                id "1"
                amount 800.00
                timestamp "2024-08-01T14:00:00Z"
                user_id "user_456"
                card_number "4532987654321098"
                card_type "Visa"
                card_issuer "Wells Fargo"
                merchant_name "Department Store"
                location "Los Angeles"
                status "Approved"
            }
            {
                id "2"
                amount 750.00
                timestamp "2024-08-01T14:03:00Z"
                user_id "user_456"
                card_number "4532987654321098"
                card_type "Visa"
                card_issuer "Wells Fargo"
                merchant_name "Jewelry Store"
                location "Los Angeles"
                status "Approved"
            }
            {
                id "3"
                amount 600.00
                timestamp "2024-08-01T14:05:00Z"
                user_id "user_456"
                card_number "4532987654321098"
                card_type "Visa"
                card_issuer "Wells Fargo"
                merchant_name "Furniture Store"
                location "Los Angeles"
                status "Approved"
            }
            {
                id "4"
                amount 500.00
                timestamp "2024-08-01T14:07:00Z"
                user_id "user_456"
                card_number "4532987654321098"
                card_type "Visa"
                card_issuer "Wells Fargo"
                merchant_name "Clothing Store"
                location "Los Angeles"
                status "Approved"
            }
        ]
        ruleContext "Total exposure > $3000 in 10 mins on one PAN: Flag transactions when cumulative amount exceeds $3000 within 10 minutes on same card number" 
    }
    @@assert({{ this.categorization == "Fraud" }})
}