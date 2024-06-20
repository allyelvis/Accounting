#!/bin/bash

# Function to obtain the bearer token
get_token() {
  TOKEN=$(curl -s -X POST https://ebms.obr.gov.bi:9443/ebms_api/login \
  -H "Content-Type: application/json" \
  -d '{"username":"your_username", "password":"your_password"}' | jq -r '.access_token')
}

# Function to stream invoice data
stream_invoice_data() {
  local invoice_data=$1
  curl -X POST https://ebms.obr.gov.bi:9443/ebms_api/getInvoices \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$invoice_data"
}

# Function to stream stock movement data
stream_stock_data() {
  local stock_data=$1
  curl -X POST https://ebms.obr.gov.bi:9443/ebms_api/stock_movements \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$stock_data"
}

# Obtain token
get_token

# Replace with your actual data and logic to fetch the data
INVOICE_DATA='{"invoice_data": "your_invoice_data"}'
STOCK_DATA='{"stock_data": "your_stock_data"}'

# Stream data
stream_invoice_data "$INVOICE_DATA"
stream_stock_data "$STOCK_DATA"
