#!/bin/bash

# overriding the values for the prod environment
export SITUATE_URL="https://situate-production/situate"
export SITUATE_APIKEY="aKLPo9XaCbRTz93Yq5DaYXNaZtPaJmNantBa8CWbZQ"
export WORKFLOW_ID="8a2f9c5a-4c7e-11eb-bc3a-0242ac110002"

./run_gitpull.sh
