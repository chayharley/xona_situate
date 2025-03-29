# xona_situate

This repo is for various playbooks used with Xona Software's Situate workflow automator (think Low-Code/Robotic Process Automation). 

I've used various applications over the years and have found Situate one of the better ones to use.

### $ ./defaults.sh

This script sets default values for connecting to Xona Software's Situate API via RESTful requests.

It includes the server URL and API key, which also allows users to override these defaults by setting environment variables. 
The script is designed to be sourced by other utilities to ensure consistent configuration.

#### Usage

1. Source the script in your other scripts:

```
#/bin/bash

source ../defaults.sh
```

2. Override defaults by setting environment variables before running:

```bash
export SITUATE_URL="https://situate-production-server/situate"
export SITUATE_APIKEY="newapikey12345"
```

