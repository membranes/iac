#!/bin/bash


# Pause
rho=25s
tau=60s

path=file://compute/core/batch/delete

: << 'comment'
The job definition
comment

aws batch deregister-job-definition --cli-input-json "$path/deregister-job-definition.json"
echo "Deregistering job definition"
sleep tau


: << 'comment'
The job queue
comment

aws batch update-job-queue --cli-input-json "$path/job-queue.json" --state "DISABLED"
echo "Disabling the job queue"
sleep rho

aws batch delete-job-queue --cli-input-json "$path/job-queue.json"
echo "Deleting the job queue"
sleep tau


: << 'comment'
Compute environment
comment

aws batch update-compute-environment --cli-input-json "$path/compute-environment.json" --state "DISABLED"
echo "Disabling compute environment"
sleep rho

aws batch delete-compute-environment --cli-input-json "$path/compute-environment.json"
echo "Deleting compute environment"
