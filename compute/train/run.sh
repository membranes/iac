#!/bin/bash

<< 'comment'
Notes:
* https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
comment

path=file://compute/train

aws ec2 run-instances --cli-input-json "$path/run.json" --user-data "$path/data.txt" --region $1
