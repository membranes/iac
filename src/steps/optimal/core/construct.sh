#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Path
path=file://src

# The state machine.  It consists of two task definitions; preceding step.
aws stepfunctions create-state-machine --cli-input-json $path/steps/optimal/core/define.json --definition $path/steps/optimal/core/machine.asl.json
