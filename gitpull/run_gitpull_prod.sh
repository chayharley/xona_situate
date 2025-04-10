#!/bin/bash

# overriding the values for the prod environment
export SITUATE_URL="https://situate-production/situate"
export SITUATE_APIKEY="aKLPo9XaCbRTz93Yq5DaYXNaZtPaJmNantBa8CWbZQ"
export WORKFLOW_ID="9n524db4-1611-11f0-8b06-475160e3b1a3"

./run_gitpull.sh
