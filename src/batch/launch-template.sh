#!/bin/bash

<< 'comment'
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-launch-template.html
comment

path=file://compute/core/batch

aws ec2 create-launch-template --cli-input-json $path/launch-template.json --region $1
