#!/bin/bash

path=file://compute/core

aws ec2 delete-launch-template --cli-input-json $path/ec2/delete.json
