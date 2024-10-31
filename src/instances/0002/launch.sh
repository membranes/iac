#!/bin/bash

<< 'comment'
Run https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
comment

path=file://src/instances/0002

aws ec2 run-instances --user-data $path/data.txt --cli-input-json $path/launch.json --region $1
