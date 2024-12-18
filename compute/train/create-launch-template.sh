#!/bin/bash

: << 'comment'
This script creates a launch template for model development
    * $1: An Amazon region code.
comment

path=file://compute/train

aws ec2 create-launch-template --cli-input-json "$path/define.json" --region $1
