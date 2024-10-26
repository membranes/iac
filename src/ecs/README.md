<br>

## The Amazon ECS (Elastic Container Service) Settings

### Cluster

> [!TIP]
> * aws ecs [create-cluster](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/create-cluster.html) --generate-cli-skeleton > {.json}
> * aws ecs [delete-cluster](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/delete-cluster.html) --generate-cli-skeleton > {.json}

<br>

A [cluster](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html) for a group of tasks and services.[^cluster]

* [Bootstrapping Amazon ECS Linux container instances to pass data](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/bootstrap_container_instance.html)
* [Creating an Amazon ECS cluster for the Amazon EC2 launch type](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/create-ec2-cluster-console-v2.html)
* [Amazon ECS launch types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)


<br>

### Logs

The page [CloudWatch Log Group](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/logs/index.html#cli-aws-logs) outlines log group creation.  Each of the project's task definitions includes a log group.

<br>

### Tasks

> [!TIP]
> aws ecs [register-task-definition](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/register-task-definition.html) --generate-cli-skeleton > {.json}

For an in depth understanding of task definitions study [Amazon ECS Task Definition](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html), and for a programmatic _task definition registration_ option study [register-task-definition](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/register-task-definition.html)[^task] 

Beware:[^errors]
* --container-definitions node of a task definition template
  * 'cpu': Is optional for Fargate launch types
  * 'memory': *ditto*
* --cpu node
  * For the correct settings study [Task Size](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)
* --memory node
  * Again, for the correct settings study [Task Size](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)


For more about graphics processing unit dependent tasks visit [Amazon ECS task definitions for GPU workloads](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html)

* $1$ for cases using Trainer's `hyperparameter_search`
* $\ge 1$ if training via Ray's distributed hyperparameter search.


Of interest:

* [Container Definitions](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#container_definitions)
* [Passing Data to an Amazon ECS Task](https://docs.aws.amazon.com/step-functions/latest/dg/connect-ecs.html#connect-ecs-pass-to)
* [Amazon ECS task definitions for GPU workloads](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-gpu.html)

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>

[^errors]: [Troubleshoot Amazon ECS task definition invalid CPU or memory errors](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-cpu-memory-error.html)
[^cluster]: [Cluster & Amazon Command Line Interface](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html)
[^task]: [Task & Amazon Command Line Interface](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html)
