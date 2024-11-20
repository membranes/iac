#!/bin/bash

path=file://src/ecs/ec2

aws autoscaling create-auto-scaling-group --cli-input-json "$path/autoscaling.json"
