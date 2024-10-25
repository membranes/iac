#!/bin/bash

: << 'comment'
This script starts the execution of a state machine via its Amazon Resource Name (ARN).
comment

path=file://src

aws ec2 run-instances --user-data file://src/ec2/0001/data.txt --cli-input-json $path/ec2/0001/instance.json

aws stepfunctions start-execution --cli-input-json $path/steps/data/execute.json

