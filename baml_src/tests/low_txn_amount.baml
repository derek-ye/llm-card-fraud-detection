test LowDollarAuthFraudTest {
    functions [CategorizeCardTransaction]
    args {
        transaction {
                id "51"
                amount 0.01
                timestamp "2024-08-01T14:30:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Pending"
            }

        prevTransactionContext [
            {
                id "1"
                amount 0.01
                timestamp "2024-08-01T13:31:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "2"
                amount 0.01
                timestamp "2024-08-01T13:32:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "3"
                amount 0.01
                timestamp "2024-08-01T13:33:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "4"
                amount 0.01
                timestamp "2024-08-01T13:34:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "5"
                amount 0.01
                timestamp "2024-08-01T13:35:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "6"
                amount 0.01
                timestamp "2024-08-01T13:36:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "7"
                amount 0.01
                timestamp "2024-08-01T13:37:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "8"
                amount 0.01
                timestamp "2024-08-01T13:38:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "9"
                amount 0.01
                timestamp "2024-08-01T13:39:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "10"
                amount 0.01
                timestamp "2024-08-01T13:40:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "11"
                amount 0.01
                timestamp "2024-08-01T13:41:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "12"
                amount 0.01
                timestamp "2024-08-01T13:42:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "13"
                amount 0.01
                timestamp "2024-08-01T13:43:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "14"
                amount 0.01
                timestamp "2024-08-01T13:44:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "15"
                amount 0.01
                timestamp "2024-08-01T13:45:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "16"
                amount 0.01
                timestamp "2024-08-01T13:46:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "17"
                amount 0.01
                timestamp "2024-08-01T13:47:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "18"
                amount 0.01
                timestamp "2024-08-01T13:48:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "19"
                amount 0.01
                timestamp "2024-08-01T13:49:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "20"
                amount 0.01
                timestamp "2024-08-01T13:50:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "21"
                amount 0.01
                timestamp "2024-08-01T13:51:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "22"
                amount 0.01
                timestamp "2024-08-01T13:52:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "23"
                amount 0.01
                timestamp "2024-08-01T13:53:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "24"
                amount 0.01
                timestamp "2024-08-01T13:54:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "25"
                amount 0.01
                timestamp "2024-08-01T13:55:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "26"
                amount 0.01
                timestamp "2024-08-01T13:56:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "27"
                amount 0.01
                timestamp "2024-08-01T13:57:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "28"
                amount 0.01
                timestamp "2024-08-01T13:58:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "29"
                amount 0.01
                timestamp "2024-08-01T13:59:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "30"
                amount 0.01
                timestamp "2024-08-01T14:00:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "31"
                amount 0.01
                timestamp "2024-08-01T14:01:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "32"
                amount 0.01
                timestamp "2024-08-01T14:02:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "33"
                amount 0.01
                timestamp "2024-08-01T14:03:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "34"
                amount 0.01
                timestamp "2024-08-01T14:04:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "35"
                amount 0.01
                timestamp "2024-08-01T14:05:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "36"
                amount 0.01
                timestamp "2024-08-01T14:06:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "37"
                amount 0.01
                timestamp "2024-08-01T14:07:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "38"
                amount 0.01
                timestamp "2024-08-01T14:08:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "39"
                amount 0.01
                timestamp "2024-08-01T14:09:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "40"
                amount 0.01
                timestamp "2024-08-01T14:10:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "41"
                amount 0.01
                timestamp "2024-08-01T14:11:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "42"
                amount 0.01
                timestamp "2024-08-01T14:12:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "43"
                amount 0.01
                timestamp "2024-08-01T14:13:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "44"
                amount 0.01
                timestamp "2024-08-01T14:14:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "45"
                amount 0.01
                timestamp "2024-08-01T14:15:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "46"
                amount 0.01
                timestamp "2024-08-01T14:16:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "47"
                amount 0.01
                timestamp "2024-08-01T14:17:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "48"
                amount 0.01
                timestamp "2024-08-01T14:18:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "49"
                amount 0.01
                timestamp "2024-08-01T14:19:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
            {
                id "50"
                amount 0.01
                timestamp "2024-08-01T14:20:00Z"
                user_id "user_123"
                card_number "4532123456789012"
                card_type "Visa"
                card_issuer "Chase Bank"
                merchant_name "Online Store"
                location "Various"
                status "Approved"
            }
        ]
        ruleContext "Low Dollar Auth Testing: If more than 50 attempts with $0.01 authorization from the same card ID in 60 minutes, flag as fraud" 
    }
    @@assert({{ this.categorization == "Fraud" }})
}