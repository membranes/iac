#!/bin/bash

: << 'comment'
This program sets keys for the dispatches project.
comment

path=file://src/secrets
aws secretsmanager create-secret --cli-input-json "$path/define.json"  --secret-string "$path/secret-string.json"
