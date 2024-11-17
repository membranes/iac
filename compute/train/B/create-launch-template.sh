#!/bin/bash

: << 'comment'
This script creates the launch template of a training phase
comment

path=file://compute/train

aws ec2 create-launch-template --launch-template-name $1  --cli-input-json "$path/ec2/define.json" --launch-template-data "$path/B/launch-template-data.json" --region $2
