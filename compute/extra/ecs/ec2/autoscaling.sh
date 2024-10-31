#!/bin/bash

path=file://compute/extra

aws autoscaling create-auto-scaling-group --cli-input-json $path/ec2/autoscaling.json
