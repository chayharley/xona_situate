#!/bin/bash

# overriding the values for the prod environment
export SITUATE_URL="https://situate-production/situate"
export SITUATE_APIKEY="aKLPo9XaCbRTz93Yq5DaYXNaZtPaJmNantBa8CWbZQ"
export WORKFLOW_ID="9n524db4-1611-11f0-8b06-475160e3b1a3"

if [[ ! -x ./run_gitpull.sh ]]; then
    echo "run_gitpull.sh not found or not executable! Exiting..."
    exit 1
fi
