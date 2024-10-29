#!/bin/bash

aws ec2 delete-launch-template --cli-input-json file://src/core/ec2/delete.json
