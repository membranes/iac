#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Path
path=file://src/core

# The state machine.
aws stepfunctions create-state-machine --cli-input-json $path/steps/define.json --definition $path/steps/machine.asl.json
