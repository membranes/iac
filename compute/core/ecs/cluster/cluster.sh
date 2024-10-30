#!/bin/bash

: '
Creates an Amazon Elastic Container Service (ECS) Cluster
'

aws ecs create-cluster --cli-input-json file://compute/core/ecs/cluster/define.json
