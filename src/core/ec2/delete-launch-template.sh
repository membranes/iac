#!/bin/bash

aws ec2 delete-launch-template --cli-input-json file://src/ec2/0001/delete.json
