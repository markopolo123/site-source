#!/usr/bin/env bash

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to sftp target...\033[0m\n"

# Go To Public folder
cd ../public

# Use SFTP to upload to remote.
sftp "londonfe@host54.servers.prgn.misp.co.uk" << 'EOF'
cd www
put -r *
EOF
