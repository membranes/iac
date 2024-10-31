<br>

### Notes

Templates, and execution of templates.

  * [create-launch-template](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/create-launch-template.html), [Create an Amazon EC2 launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-launch-template.html#create-launch-template-define-parameters)
  * [delete-launch-template](https://docs.aws.amazon.com/cli/latest/reference/ec2/delete-launch-template.html)
  * [run-instances](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/ec2/run-instances.html)
  * [Run commands when you launch an EC2 instance with user data input](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)

<br>

### Testing

**Foremost**:

* define.json
* aws ec2 create-launch-template --cli-input-json file://src/core/ec2/define.json --region {region}
* launch.json &larr; the launch template identifier of the previous step
* data.txt
* aws ec2 run-instances --user-data $path/ec2/data.txt --cli-input-json $path/ec2/launch.json

<br>

<a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-ssh.html" target="_blank"><b>Connecting</b></a>:

If an EC2 (Elastic Compute Cloud) Instance, the instance user name is usually `ec2-user`

```shell
chmod 400 {key.pair.name}
ssh -i /path/{key.pair.name} {instance.user.name}@instance-public-dns-name
```

Prior to testing a ECR (Elastice Container Registry) image container of a private repository, login.  For example

```shell
aws ecr get-login-password --region {region.code} | sudo docker login --username AWS \ 
     --password-stdin {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com
sudo docker pull \
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{image.tag}
sudo docker run \
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{image.tag}
```

The `sudo` key might not be required if an EC2 machine is launched with a *user data file* that ensures docker usage without `sudo`, therefore

```shell
aws ecr get-login-password --region {region.code} | docker login --username AWS \
    --password-stdin {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com
docker pull \
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{tag.name}
docker run \
     {aws.account.identifier}.dkr.ecr.{region.code}.amazonaws.com/{repository.name}:{tag.name}
```

<br>

### Beware

* [huggingface.co environment variables](https://huggingface.co/docs/huggingface_hub/main/en/package_reference/environment_variables)
* [aws configure](https://thereferences.github.io/practice/docs/build/html/development/integration/cloud.html)


<br>
<br>

<br>
<br>

<br>
<br>

<br>
<br>
