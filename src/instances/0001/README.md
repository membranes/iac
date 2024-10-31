
<br>

### Notes

**Foremost**:

* define.json
* aws ec2 create-launch-template --cli-input-json file://src/core/ec2/define.json --region {region}
* launch.json &larr; embed the launch template identifier, produced by the previous step, in launch.json
* data.txt
* aws ec2 run-instances --user-data $path/ec2/data.txt --cli-input-json $path/ec2/launch.json --region {region}

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
<br>

<br>
<br>

<br>
<br>

<br>
<br>
