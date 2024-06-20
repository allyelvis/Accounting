TOKEN=$(curl -s -X POST https://ebms.obr.gov.bi:9443/ebms_api/login \
-H "Content-Type: application/json" \
-d '{"username":"your_username", "password":"your_password"}' | jq -r '.access_token')
