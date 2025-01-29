#!/bin/bash

path=file://compute/train

aws ec2 delete-launch-template --cli-input-json "$path/delete.json"
