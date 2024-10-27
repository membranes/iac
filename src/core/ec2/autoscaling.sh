#!/bin/bash

path=file://src

aws autoscaling create-auto-scaling-group --cli-input-json $path/ec2/0001/autoscaling.json
