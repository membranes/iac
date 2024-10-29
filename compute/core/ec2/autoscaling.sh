#!/bin/bash

path=file://src/core

aws autoscaling create-auto-scaling-group --cli-input-json $path/ec2/autoscaling.json
