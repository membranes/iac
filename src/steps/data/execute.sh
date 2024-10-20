#!/bin/bash

: << 'comment'
This script starts the execution of a state machine via its Amazon Resource Name (ARN).
comment

aws stepfunctions start-execution --cli-input-json file://src/execute.json
