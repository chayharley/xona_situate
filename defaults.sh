#!/bin/bash

# URL base unless overriden by env
SITUATE_URL=${SITUATE_URL:-"https://situate-development/situate"}

# API key unless overridden
SITUATE_APIKEY=${SITUATE_APIKEY:-"iJBEar7CakPTa29Zay5CaZXNaYxBaJtNantCa9CWaZQ"}

# Function to print the current configuration (optional, for debugging)
print_defaults() {
    echo "Using Situate URL: $SITUATE_URL"
    echo "Using API Key: $SITUATE_APIKEY"
}
