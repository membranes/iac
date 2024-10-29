#!/bin/bash

<< 'comment'
Run https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html
comment

path=file://compute/core

aws ec2 run-instances --user-data $path/ec2/data.txt --cli-input-json $path/ec2/launch.json
