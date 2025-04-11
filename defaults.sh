#!/bin/bash

# URL base unless overridden by env
SITUATE_URL=${SITUATE_URL:-"https://situate-development/situate"}

# API key unless overridden by env (default key has read-only permissions)
SITUATE_APIKEY=${SITUATE_APIKEY:-"iJBEar7CakPTa29Zay5CaZXNaYxBaJtNantCa9CWaZQ"}

# Function to print the current configuration (optional, for debugging)
print_defaults() {
    echo "Using Situate URL: $SITUATE_URL"
    echo "Using API Key: $SITUATE_APIKEY"
}

# Validate required variables
if [[ -z "$SITUATE_APIKEY" ]]; then
    echo "Error: SITUATE_APIKEY is not set!"
    exit 1
fi

if [[ -z "$SITUATE_URL" ]]; then
    echo "Error: SITUATE_URL is not set!"
    exit 1
fi