#!/bin/bash

: << 'comment'
This script converts the user data script, data.txt, to a Base 64 format.
comment

base64 "compute/train/data.txt" > "compute/train/data-base64.txt"
