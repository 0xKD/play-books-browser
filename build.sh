#!/bin/bash
set -e

# make source .env visible to envsubst
set -a
source .env
mkdir -p dist/
envsubst '${GOOGLE_API_KEY},${GOOGLE_CLIENT_ID}' < index.html > dist/index.html
set +a
