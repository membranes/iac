#!/bin/bash

: << 'comment'
This script starts the execution of a state machine via its Amazon Resource Name (ARN).
comment

path=file://src/core

aws stepfunctions start-execution --cli-input-json $path/steps/execute.json
