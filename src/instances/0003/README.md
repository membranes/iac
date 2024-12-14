<br>

### Notes

For a step functions & batch dependent pipeline.

#### Launch Templates

Beware ([REF](https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html)):

> *The following launch template parameters are ignored by AWS Batch:*
> * *Instance type (specify your desired instance types when you create your compute environment)*
> * *Instance role (specify your desired instance role when you create your compute environment)*
> * *Network interface subnets (specify your desired subnets when you create your compute environment)*
> * *Instance market options (AWS Batch must control Spot Instance configuration)*
> * *Disable API termination (AWS Batch must control instance lifecycle)*

<br>

#### Boostrap

* [MIME multi-part archive](https://cloudinit.readthedocs.io/en/latest/explanation/format.html#mime-multi-part-archive)
* [MIME Example](https://repost.aws/knowledge-center/execute-user-data-ec2)
* [Launch Template & User Data](https://docs.aws.amazon.com/autoscaling/ec2/userguide/examples-launch-templates-aws-cli.html#example-user-data)<br>
    Possibly: --launch-template-data '{"UserData":"$path/mime"}'

<br>

#### Step Functions

* [States Language](https://states-language.net/spec.html)

<br>

#### IPv6 & IPv4

> "The Amazon ECS GPU-optimized AMI has IPv6 enabled, which causes issues when using yum. This can be resolved by configuring yum to use IPv4 with the following command. ([REF](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html))