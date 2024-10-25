#!/bin/bash

aws ec2 run-instances --user-data file://src/ec2/0001/data.txt --cli-input-json $path/ec2/0001/instance.json

