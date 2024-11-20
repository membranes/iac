#!/bin/bash

: << 'comment'
The reverse of construct 
comment

# Pause
tau=2s

# Path
path=file://src/ecs

# Delete Machine
aws stepfunctions delete-state-machine --cli-input-json $path/steps/delete.json
sleep $tau

# De-register Task Definition/s
aws ecs deregister-task-definition --cli-input-json $path/tasks/deregister.json
sleep $tau

# Delete Task Definition/s
aws ecs delete-task-definitions --cli-input-json $path/tasks/delete.json
sleep $tau

# Delete Log Group
aws logs delete-log-group --cli-input-json $path/logs/delete.json
