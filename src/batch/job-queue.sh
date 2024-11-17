#!/bin/batch

aws batch create-job-queue --cli-input-json file://compute/core/batch/job-queue.json
