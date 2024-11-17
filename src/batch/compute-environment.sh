#!/bin/bash

<< 'comment'
https://awscli.amazonaws.com/v2/documentation/api/latest/reference/batch/create-compute-environment.html
comment

path=file://compute/core

aws batch create-compute-environment --cli-input-json $path/batch/compute-environment.json
