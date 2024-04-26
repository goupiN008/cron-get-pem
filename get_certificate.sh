#!/bin/bash

# Set the URL of the website whose certificate you want to fetch
WEBSITE_URL="$WEBSITE_HOST:443"

# # Set the path where you want to save the PEM file
PEM_FILE_PATH="/app/cert/fullchain.pem"

# # Use openssl to fetch the certificate and save it to the PEM file
openssl s_client -connect "$WEBSITE_URL" -servername "$WEBSITE_URL" -showcerts </dev/null 2>/dev/null | sed -n '/BEGIN CERTIFICATE/,/END CERTIFICATE/p' > "$PEM_FILE_PATH"
openssl s_client -showcerts -servername $WEBSITE_URL -connect $WEBSITE_URL </dev/null
echo "$(date) Certificate fetched and saved"

