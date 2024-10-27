#!/bin/bash

: '
Creates an Amazon Elastic Container Service (ECS) Cluster
'

aws ecs create-cluster --cli-input-json file://src/data/ecs/cluster/define.json
