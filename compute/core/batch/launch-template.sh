#!/bin/bash

path=file://compute/core

aws ec2 create-launch-template --cli-input-json $path/batch/launch-template.json --region $1
