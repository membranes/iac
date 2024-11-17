#!/bin/bash

: << 'comment'
This script converts the user data script, data.txt, to a Base 64 format.
comment

base64 compute/train/model/B/data.txt > compute/train/model/B/data-base64.txt
