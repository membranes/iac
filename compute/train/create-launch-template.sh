#!/bin/bash

: << 'comment'
This script creates the launch template of a training phase
    * $1: A name for the launch template.
    * $2: The letter code/representation of a model.
    * $3: An Amazon region code.
comment

path=file://compute/train

aws ec2 create-launch-template --launch-template-name $1  --cli-input-json "$path/ec2/define.json" --launch-template-data "$path/model/$2/launch-template-data.json" --region $3
