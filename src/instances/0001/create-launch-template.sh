#!/bin/bash

path=file://src/instances/0001

aws ec2 create-launch-template --cli-input-json $path/define.json --region $1
