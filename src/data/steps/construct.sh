#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Pause
tau=2s

# Path
path=file://src

# The log group of the task definition
aws logs create-log-group --cli-input-json "$path/ecs/logs/acquire/define.json"
aws logs create-log-group --cli-input-json "$path/ecs/logs/prepare/define.json"

sleep $tau

# The task definition vis-à-vis this repository.
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/acquire/define.json"
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/prepare/define.json"

sleep $tau

# The state machine.  It consists of two task definitions; preceding step.
aws stepfunctions create-state-machine --cli-input-json $path/steps/data/define.json --definition $path/steps/data/machine.asl.json
