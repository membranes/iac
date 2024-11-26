#!/bin/bash

: << 'comment'
This script creates the launch template of a training phase
    * $1: The letter code/representation of a model.
    * $2: An Amazon region code.
comment

path=file://compute/train/model

aws ec2 create-launch-template --cli-input-json "$path/$1/define.json" --region $2
