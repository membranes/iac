#!/bin/bash

: << 'comment'
This script creates the launch template of a training phase
comment

path=file://compute/train/ec2

aws ec2 create-launch-template --cli-input-json "$path/define.json" --launch-template-data "$path/launch-template-data.json" --region $1
