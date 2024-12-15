<br>

## Notes

For a step functions, batch, and ECS (Elastic Container Service) dependent pipeline.

### Launch Templates

Beware ([REF](https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html)):

> *The following launch template parameters are ignored by AWS Batch:*
> * *Instance type (specify your desired instance types when you create your compute environment)*
> * *Instance role (specify your desired instance role when you create your compute environment)*
> * *Network interface subnets (specify your desired subnets when you create your compute environment)*
> * *Instance market options (AWS Batch must control Spot Instance configuration)*
> * *Disable API termination (AWS Batch must control instance lifecycle)*


Additionally:

* [In-depth Tutorial](https://docs.aws.amazon.com/batch/latest/userguide/getting-started-ec2.html)
* [Run AWS Batch workloads with Step Functions](https://docs.aws.amazon.com/step-functions/latest/dg/connect-batch.html)
* If depending on Amazon Machine Images, instead of other Amazon catalogue images, study
    * [Elastic Container Service (ECS) Opt. Images](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html)
    * [Batch, GPU (Graphics Processing Unit), AMI (Amazon Machine Image) ](https://docs.aws.amazon.com/batch/latest/userguide/batch-gpu-ami.html)
* [ECS & GPU (Graphics Processing Unit) Workloads](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html)


Batch job definition in relation to [docker run](https://docs.docker.com/reference/cli/docker/container/run/).  Review [shared memory size](https://docs.docker.com/reference/cli/docker/buildx/build/#shm-size), i.e., `--shm-size.`

* COMMAND [exec form](https://docs.docker.com/reference/dockerfile/#cmd)<br>["--gpus", "all", "--shm-size", "=16gb", "-p", "6007:6007", "-p", "6006:6006", "-p", "8265:8265", "-p", "6379:6379",  "src/main.py", "--architecture", "bert"]

* ENVIRONMENT VARIABLES
  * **name**: AWS_DEFAULT_REGION<br>**value**: eu-west-1

* PARAMETERS
  * [Examples](https://docs.aws.amazon.com/batch/latest/userguide/example-use-parameters.html)

<br>

### Integration Service

Including, [Run a Job (.sync)](https://docs.aws.amazon.com/step-functions/latest/dg/connect-to-resource.html#connect-sync)

> *... Step Functions can wait for a request to complete before progressing to the next state. To have Step Functions wait, specify the "Resource" field in your task state definition with the .sync suffix appended after ...*

<br>

### Boostrap

* [MIME multi-part archive](https://cloudinit.readthedocs.io/en/latest/explanation/format.html#mime-multi-part-archive)
* [MIME Example](https://repost.aws/knowledge-center/execute-user-data-ec2)
* [Launch Template & User Data](https://docs.aws.amazon.com/autoscaling/ec2/userguide/examples-launch-templates-aws-cli.html#example-user-data)<br>
    Possibly: --launch-template-data '{"UserData":"$path/mime"}'
* [User Data Expectations](https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html)
* [Bootstrapping](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/bootstrap_container_instance.html)
  * https://blog.tedivm.com/guides/2020/07/aws-ecs-with-ubuntu-and-gpu-support/

<br>

### Step Functions

* [States Language](https://states-language.net/spec.html)

<br>

### IPv6 & IPv4

> "The Amazon ECS GPU-optimized AMI has IPv6 enabled, which causes issues when using yum. This can be resolved by configuring yum to use IPv4 with the following command. ([REF](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html))


<br>

### Testing a machine

```bash
docker run --gpus all --shm-size=15gb -p 6007:6007 -p 6006:6006 -p 8265:8265 -p 6379:6379 -e AWS_DEFAULT_REGION=eu-west-1 ghcr.io/membranes/text:master src/main.py --architecture bert
```

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
