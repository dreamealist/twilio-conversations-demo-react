#!/usr/bin/env bash

# Decrypt
openssl enc -aes-256-cbc -md md5 -a -d -in ./encrypted/env_data.tar.enc -out ./environments/env_data.tar -pass env:AUTOMATION_ENC_PASS

# Uncompress
tar -xf ./environments/env_data.tar

# Remove
rm ./environments/env_data.tar
