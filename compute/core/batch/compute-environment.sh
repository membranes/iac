#!/bin/bash

path=file://compute/core

aws batch create-compute-environment --cli-input-json $path/batch/compute-environment.json
