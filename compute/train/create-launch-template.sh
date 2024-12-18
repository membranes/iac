#!/bin/bash

: << 'comment'
This script creates the launch template of a training phase
    * $1: An Amazon region code.
comment

path=file://compute/train

aws ec2 create-launch-template --cli-input-json "$path/define.json" --region $1
