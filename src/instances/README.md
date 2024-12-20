<br>

## Elastic Cloud Compute Environments

### Creating

```mermaid
stateDiagram-v2
    direction LR
    
    id01: define.json
    id02: DIRECTIVE#58; create<br>launch template
    id03: launch.json
    id04: data.txt
    id05: DIRECTIVE#58; run an<br>instance of the template
    
    id01:::feeds --> id02
    id02:::steps --> id03 : <span style='font-size#58;x-small'>embed launch<br>template code</span>
    id03:::feeds --> id05:::steps
    id04:::feeds --> id05

    classDef feeds fill:orange,stroke-width:0,font-size:x-small,opacity:0.85;
    classDef steps fill:#000000,color:white,font-style:italic,stroke-width:0,font-size:x-small,opacity:1;
```

<br>

In brief:

* A definition.json encodes the template details for EC2 (Elastic Cloud Compute) instance launching. 
* For example, the directive `aws ec2 create-launch-template --cli-input-json file://src/instances/0002/define.json --region {region}` creates a template.
* The template has an identification code, this code is embed in a launch.json.
     ```json
     {
          "LaunchTemplate": {
               "LaunchTemplateId": "...",
               "Version": "$Latest"
          }
    }
    ```
* A `data.txt` script encodes custom launch time directives.[^user-data]
* The directive `aws ec2 run-instances --user-data file://src/instances/0002/data.txt --cli-input-json file://src/instances/0002/launch.json --region {region}` runs an instance of the template.

<br>

### Connecting

To <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-ssh.html" target="_blank">connect</a> to an EC2 (Elastic Compute Cloud) instance via a Key Pair

```shell
chmod 400 {key.pair.name}
ssh -i /path/{key.pair.name} {instance.user.name}@instance-public-dns-name
```

The instance user name is usually `ec2-user`.  Subsequently, explore elastic container registry images.  For example, prior to exploring/testing an ECR (Elastic Container Registry) image container **of a private repository**, login, then pull & run:

```bash
#!/bin/bash

aws ecr get-login-password --region {region.code} | sudo docker login --username AWS 
     --password-stdin {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com

sudo docker pull 
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{image.tag}

sudo docker run 
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{image.tag}
```

The `sudo` key might not be required if an EC2 machine is launched with a *user data file* that ensures docker usage without `sudo`, therefore

```bash
#!/bin/bash

aws ecr get-login-password --region {region.code} | docker login --username AWS \
    --password-stdin {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com

docker pull 
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{tag.name}

docker run 
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{tag.name}
```

For a **graphics processing unit dependent run**, a directive akin to

```shell
sudo docker run --rm --gpus all --shm-size=16gb -e AWS_DEFAULT_REGION={region}
     {aws.account.identifier}.dkr.ecr.{region}.amazonaws.com/{repository}:{tag}
```

might be required.

* export AWS_DEFAULT_REGION={region}
* export AWS_REGION={region}


<br>


## Special Cases

### UBUNTU Machine

Especially:

* [Single Framework DL (Deep Learning) AMI (Amazon Machine Image)](https://docs.aws.amazon.com/dlami/latest/devguide/appendix-ami-release-notes.html)
* [AWS Deep Learning AMI GPU PyTorch 2.5 (Ubuntu 22.04)](https://aws.amazon.com/releasenotes/aws-deep-learning-ami-gpu-pytorch-2-5-ubuntu-22-04/)

<br>

Install Docker via instance pre-launch *user data*:

```bash
#!/bin/bash
sudo yum update -y

# Docker
sudo yum install -y docker
sudo service docker start

# In order to use docker commands without 'sudo'
sudo usermod -a -G docker {user.name}
```

<br>

Connecting to a launched machine:

```bash
ssh -i {key.name} ubuntu@ec2-{...}.{region.code}.compute.amazonaws.com
```

<br>

If there is a hosts overflow

```bash
rm -f .ssh/known_hosts
```

<br>

## GitHub Packages

The team registers images via GitHub Container Registry & Amazon Web Services' Elastic Container Registry (ECR); the GitHub image is the backup.  Usually, if the image's size is greater than a gigabyte ECR image registration is skipped, hence we need the GitUb image for operations.  This is straightforward within Amazon's compute resources:  

```bash
docker pull ghcr.io/{org}/{repository}:{branch}
docker run --rm --gpus all --shm-size=27gb -e AWS_DEFAULT_REGION={region.code} 
     ghcr.io/{org}/{repository}:{branch}
```

e.g.

```bash
docker pull ghcr.io/membranes/text:master
docker run --gpus all --shm-size=27gb -p 6007:6007 -p 6006:6006 -p 8265:8265 -p 6379:6379 -e AWS_DEFAULT_REGION={region.code} ghcr.io/membranes/text:master src/main.py --architecture bert
```

<br>


## References

* [create-launch-template](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-launch-template.html), [Create an Amazon EC2 launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#create-launch-template-define-parameters)
* [delete-launch-template](https://docs.aws.amazon.com/cli/latest/reference/ec2/delete-launch-template.html)
* [run-instances](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html)
* [aws configure](https://thereferences.github.io/practice/docs/build/html/development/integration/cloud.html)
* [Amazon EC2, Docker Containers, Credentials](https://www.baeldung.com/ops/docker-container-pass-aws-credentials)
* [Previews of Amazon resources](https://aws.amazon.com/documentation-overview/)
* [Documentation per resource](https://docs.aws.amazon.com)
* [Instance Types](https://aws.amazon.com/ec2/instance-types/)

<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>


[^user-data]: [Run commands when you launch an EC2 instance with user data input](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)
