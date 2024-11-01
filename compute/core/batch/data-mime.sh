#!/bin/bash

<< 'comment'
https://cloudinit.readthedocs.io/en/latest/explanation/format.html#mime-multi-part-archive
comment

path=compute/core/batch

cloud-init devel make-mime -a $path/data.sh:x-shellscript > $path/data-mime
