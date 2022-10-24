# Week 0
## Useful Links
[AWS Properties EC2](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html)
## Homework
Create Cloudformation script that will create Single EC2 Instance.
### Requirements
Use `Parameters` section for customization of inputs.
Use `Outputs` section to show public IP of the instance
### Solution
[Cloudformation Script](./cloudformation/week-0.yaml)
Create Stack
```shell
aws cloudformation create-stack --profile lohika --template-body file:///Users/avlasov/git/lohika/aws/cloudformation/week-0.yaml --stack-name week-0 --region us-west-2 --parameters ParameterKey=KeyName,ParameterValue=Week0
```

Delete Stack
``` shell
aws cloudformation delete-stack --stack-name week-0 --profile lohika 
```
#### Screenshots
![Overview](./images/week-0/Stack_Overview.png)
![Outputs](./images/week-0/Stack_Outputs.png)
![Parameters](./images/week-0/Stack_Parameters.png)

# Week 1
## Useful Links
[Creating Auto Scaling Groups](https://docs.aws.amazon.com/autoscaling/ec2/userguide/creating-auto-scaling-groups-with-cloudformation.html)

[Auto Scaling](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-autoscaling.html)

[Deploying Application](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/deploying.applications.html)

[User Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide)

[AWS Resources Init](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-init.html)

[Create Key Pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/create-key-pairs.html)

[cfn-init](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html)
## Homework
Develop and deploy via AWS CLI CloudFormation script which will create next infrastructure
* Auto-scaling group (ASG) with two EC2 instances within it (we need to ensure that min amount of instances in the ASG is 2)
* Allow SSH and HTTP access to EC2 instances 
* Add the ability for EC2 instances to install Java 8 during startup ([Documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-init.html))
### Requirements
Use `Parameters` section for customization of inputs.
### Solution
[Cloudformation Script](./cloudformation/week-1.yaml)

Create Stack
```shell
aws cloudformation create-stack --profile lohika --template-body file:///Users/avlasov/git/lohika/aws/cloudformation/week-1.yaml --stack-name week-1 --region us-west-2 --parameters ParameterKey=KeyName,ParameterValue=Week0
```

Delete Stack
``` shell
aws cloudformation delete-stack --stack-name week-1 --profile lohika 
```
#### Screenshots
![EC2](./images/week-1/EC2.png)
![EC2 Termination/Rescaling](./images/week-1/EC2_Termination.png)
![Security Group](./images/week-1/SecutiryGroup.png)
![Stack Parameters](./images/week-1/Stack_Parameters.png)
![Stack Resources](./images/week-1/Stack_Resources.png)
![Java 8](./images/week-1/Java8.png)

## How to?
[Find subnets](https://us-west-2.console.aws.amazon.com/vpc/home?region=us-west-2#subnets:)