#!/bin/bash

path=file://src/instances/0001

aws ec2 delete-launch-template --cli-input-json $path/delete.json
