#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Pause
tau=2s

# Path
path=file://src/ecs

# The log group of the task definition
aws logs create-log-group --cli-input-json "$path/logs/define.json"

sleep $tau

# The task definition vis-à-vis this repository.
aws ecs register-task-definition --cli-input-json "$path/tasks/define.json"

sleep $tau

# The state machine.
aws stepfunctions create-state-machine --cli-input-json $path/steps/define.json --definition $path/steps/machine.asl.json
