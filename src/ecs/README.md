<br>

## The Amazon ECS (Elastic Container Service) Settings

### Cluster

> [!TIP]
> aws ecs [{command}](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/index.html#cli-aws-ecs) --generate-cli-skeleton > {.json}

<br>

A [cluster](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html) for a group of tasks and services.[^cluster]


<br>

### Logs

The page [CloudWatch Log Group](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/logs/index.html#cli-aws-logs) outlines log group creation.  Each of the project's task definitions includes a log group.

<br>

### Tasks

For an in depth understanding of task definitions study [Amazon ECS Task Definition](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html), and for a programmatic _task definition registration_ option study [register-task-definition](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ecs/register-task-definition.html)[^task] 

Beware:[^errors]
* --container-definitions node of a task definition template
  * 'cpu': Is optional for Fargate launch types
  * 'memory': *ditto*
* --cpu node
  * For the correct settings study [Task Size](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)
* --memory node
  * Again, for the correct settings study [Task Size](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html)


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
