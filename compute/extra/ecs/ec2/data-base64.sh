#!/bin/bash

: << 'comment'
This script converts the user data script, data.txt, to a Base 64 format.
comment

base64 compute/extra/ec2/data.txt > compute/extra/ec2/data-base64.txt
