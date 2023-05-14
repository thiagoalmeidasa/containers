#!/bin/bash

set -e

bw config server "${BW_HOST}"

bw login --apikey --raw
export BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)

echo "Running 'bw server' on port 8087"
bw serve --hostname 0.0.0.0 #--disable-origin-protection
