#!/bin/bash

: << 'comment'
This script assumes that Amazon ECS (Elastic Container Service) Cluster the tasks depend on is active. 
comment

# Pause
tau=2s

# Path
path=file://src
