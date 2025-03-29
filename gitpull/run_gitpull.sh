#!/bin/bash

source ../defaults.sh

WORKFLOW_ID=${WORKFLOW_ID:-"676fsb98-5850-11e8-bf16-14109fe12bfb"}
TRIGGER_NAME="my_git_pull"

URL="$SITUATE_URL/workflows/$WORKFLOW_ID?trigger=$TRIGGER_NAME"

response=$(curl -k -s -H "Content-Type: application/json" \
    -H "X-API-Key: $SITUATE_APIKEY" \
    -X POST "$URL")

if [[ $? -eq 0 ]]; then
    echo "Trigger '$TRIGGER_NAME' for workflow '$WORKFLOW_ID' executed successfully."
    echo "Response: $response"
else
    echo "Failed to execute trigger '$TRIGGER_NAME' for workflow '$WORKFLOW_ID'."
fi
