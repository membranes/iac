#!/bin/bash

path=file://compute/reference/ecs/ec2

aws ec2 create-launch-template --cli-input-json "$path/define.json" --launch-template-data "$path/launch-template-data.json" --region $1