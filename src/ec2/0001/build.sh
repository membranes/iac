#!/bin/bash

aws ec2 create-launch-template --cli-input-json file://src/ec2/0001/define.json
