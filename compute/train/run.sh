#!/bin/bash

<< 'comment'
Run https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
comment

path=file://compute/train/model

aws ec2 run-instances --cli-input-json $path/$1/run.json --region $2
