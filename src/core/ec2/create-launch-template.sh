#!/bin/bash

aws ec2 create-launch-template --cli-input-json file://src/core/ec2/define.json
