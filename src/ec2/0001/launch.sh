#!/bin/bash

aws ec2 run-instances --user-data file://src/ec2/0001/data.txt --launch-template LaunchTemplateId={launch.template.identifier}

