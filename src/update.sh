#!/bin/bash

: << 'comment'
This script updates a state machine
comment

path=file://src

aws stepfunctions update-state-machine --cli-input-json $path/update.json --definition $path/steps/machine.asl.json
