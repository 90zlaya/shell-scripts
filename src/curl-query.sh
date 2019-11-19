#!/bin/bash

# Base URL
BASE_URL=https://breaking-bad-quotes.herokuapp.com/v1/

# Content Type
CONTENT_TYPE=application/json

# Method
METHOD=GET

# Parameter #1 represents endpoint & filename
ENDPOINT=$1;

curl -X ${METHOD} ${BASE_URL}${ENDPOINT} -H 'Accept: /' -H 'Content-Type: '${CONTENT_TYPE} -v
