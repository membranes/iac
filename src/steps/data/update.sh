#!/bin/bash

: << 'comment'
This script updates a state machine
comment

path=file://src

aws stepfunctions update-state-machine --cli-input-json $path/steps/data/update.json --definition $path/steps/data/machine.asl.json
