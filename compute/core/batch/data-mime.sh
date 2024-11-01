#!/bin/bash

<< 'comment'
Embeds the Base 64 format of the bootstrap script of an EC2 (Elastic Cloud Compute) instance in a 
mime-multi-part file.  The bootstrap script configures an instance prior to its launch
    * https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
    * https://cloudinit.readthedocs.io/en/latest/explanation/format.html#mime-multi-part-archive
comment

path=compute/core/batch

cloud-init devel make-mime -a $path/data.sh:x-shellscript > $path/data-mime
