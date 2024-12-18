#!/bin/bash

<< 'comment'
Notes:
* https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
* $1: A path, i.e., model architecture name, parameter.
* $2: An Amazon region code parameter.
comment

path=file://compute/train

aws ec2 run-instances --cli-input-json "$path/run.json" --user-data "$path/$1/data.txt" --region $2
