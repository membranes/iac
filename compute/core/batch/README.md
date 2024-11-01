<br>

### Notes

* Beware, either *compute environment Security Groups* (compute-environment.json) or *Network Interfaces in Launch Template* (define.json) are exclusively allowed.
* In a batch queue definition, the object `reason` of object `jobStateTimeLimitActions` has options
  * MISCONFIGURATION:JOB_RESOURCE_REQUIREMENT
  * MISCONFIGURATION:COMPUTE_ENVIRONMENT_MAX_RESOURCE
  * CAPACITY:INSUFFICIENT_INSTANCE_CAPACITY
* <a href="https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html" _target="_blank">Amazon ECS (Elastic Container Service) Instance Role</a>

<br>

### Compute Environment

[Create Compute Environment](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/batch/create-compute-environment.html)

Exclude
```json
"ec2Configuration": [
  {
    "imageType": "ECS_AL2_NVIDIA",
    "imageIdOverride": "ami-02c4a59e25dcae346"
  }
]
```

Instead
```json
"ec2Configuration": []
```

<br>

### References

* [Batch: Getting Started](https://docs.aws.amazon.com/batch/latest/userguide/getting-started-ec2.html)
* [Batch: Graphics Processing Unit](https://docs.aws.amazon.com/batch/latest/userguide/batch-gpu-ami.html)
* Overrides
  * [Resoure Requirements](https://docs.aws.amazon.com/batch/latest/userguide/override-resource-requirements.html)
  * [Container Overrides](https://docs.aws.amazon.com/batch/latest/APIReference/API_ContainerOverrides.html)
* Step Functions
  * [And Batch](https://docs.aws.amazon.com/step-functions/latest/dg/connect-batch.html)
  * [Batch Notification](https://docs.aws.amazon.com/step-functions/latest/dg/batch-job-notification.html)

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
