#!/bin/bash

<< 'comment'
Including

    --launch-template-data '{"UserData":"$path/mime"}'

in the directive may load the MIME (Multipurpose Internet Mail Extensions) user data.
comment

# Path
path=file://src/instances/0003

# Directive
aws ec2 create-launch-template --cli-input-json $path/define.json --region $1
