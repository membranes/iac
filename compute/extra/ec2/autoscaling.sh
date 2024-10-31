#!/bin/bash

path=file://compute/core

aws autoscaling create-auto-scaling-group --cli-input-json $path/ec2/autoscaling.json
