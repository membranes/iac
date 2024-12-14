#!/bin/bash

path=file://src/instances/

aws ec2 delete-launch-template --cli-input-json $path/0003/delete.json
