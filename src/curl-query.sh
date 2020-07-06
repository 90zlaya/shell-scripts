#!/bin/bash

################################################################################
# Script name : curl-query.sh
# Description : Query API endpoint via cURL
# Arguments   : ENDPOINT
# Author      : 90zlaya
# Email       : contact@zlatanstajic.com
# Licence     : MIT
################################################################################

# Parameter #1 represents endpoint & filename
ENDPOINT=$1

# Base URL
BASE_URL="https://breaking-bad-quotes.herokuapp.com/v1/"

# Content Type
CONTENT_TYPE="application/json"

# Method
METHOD="GET"

curl -X ${METHOD} ${BASE_URL}${ENDPOINT} -H "Accept: /" -H "Content-Type: "${CONTENT_TYPE} -v
