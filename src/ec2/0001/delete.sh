#!/bin/bash

aws ec2 delete-launch-template --launch-template-id {launch.template.identifier} --region eu-west-1
