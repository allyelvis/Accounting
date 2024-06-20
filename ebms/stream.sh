curl -X POST https://ebms.obr.gov.bi:9443/ebms_api/getInvoices \
-H "Authorization: Bearer $TOKEN" \
-H "Content-Type: application/json" \
-d '{"invoice_data": "your_invoice_data"}'

curl -X POST https://ebms.obr.gov.bi:9443/ebms_api/stock_movements \
-H "Authorization: Bearer $TOKEN" \
-H "Content-Type: application/json" \
-d '{"stock_data": "your_stock_data"}'
