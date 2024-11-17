#!/bin/bash

<< 'comment'
Run https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
comment

path=file://compute/train/distil

aws ec2 run-instances --cli-input-json $path/run.json --region $1
