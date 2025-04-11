#!/bin/bash

DEFAULTS_FILE=$(dirname "$0")/defaults.sh

if [[ ! -f "$DEFAULTS_FILE" ]]; then
    echo "Defaults file not found! Exiting..."
    exit 1
fi

source "$DEFAULTS_FILE"

WORKFLOW_ID=${WORKFLOW_ID:-"676fsb98-5850-11e8-bf16-14109fe12bfb"}
TRIGGER_NAME="my_git_pull"

URL="$SITUATE_URL/workflows/$WORKFLOW_ID?trigger=$TRIGGER_NAME"

response=$(curl -k -s -w "%{http_code}" \
    -H "Content-Type: application/json" \
    -H "X-API-Key: $SITUATE_APIKEY" \
    -X POST "$URL")

http_code="${response: -3}"
response_body="${response::-3}"

if [[ $http_code -eq 200 ]]; then
    echo "SUCCESS: '$TRIGGER_NAME' for workflow '$WORKFLOW_ID' executed."
else
    echo "ERROR: Unable to execute trigger '$TRIGGER_NAME' for workflow '$WORKFLOW_ID'. HTTP Code: $http_code"
    print_defaults
fi

echo "Response: $response_body"
