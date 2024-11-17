#!/bin/bash

: << 'comment'
This script converts the user data script, data.txt, to a Base 64 format.  The argument represents a model letter.
comment

base64 "compute/train/model/$1/data.txt" > "compute/train/model/$1/data-base64.txt"
