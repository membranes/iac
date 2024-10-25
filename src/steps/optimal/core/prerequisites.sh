#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Pause
tau=2s

# Path
path=file://src

# The log group of the task definition
aws logs create-log-group --cli-input-json "$path/ecs/logs/optimal/define-core.json"

sleep $tau

# The task definition vis-à-vis this repository.
aws ecs register-task-definition --cli-input-json "$path/ecs/tasks/optimal/define-core.json"
