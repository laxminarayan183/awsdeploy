# AWS Code Deploy
Created a Webpage and Deploy using AWS CI/CD Pipeline using CodeDeploy Service

## Prerequisites

- AWS Account
- EC2 instances with:
  - IAM Role attached with `AmazonEC2RoleforAWSCodeDeploy`,`AmazonEC2FullAccess`,`AWSCodeDeployRole`
  - IAM role for CodeDeploy (`CodeDeployServiceRole`)
  - AWS CodeDeploy Agent installed and running
- An GitHub repository to store your application bundle

## Step 1: Create Github Repo and Clone it your Local Machine
## Step 2: In That Repo add Files like,Push on github 
- index.html
- appspec.yml
- dep.sh

## Step 3: Create IAM role for Code Deploy
  - Role 1 - IAM Role attached with `AmazonEC2RoleforAWSCodeDeploy`,`AmazonEC2FullAccess`,`AWSCodeDeployRole`
  - Role 2 - IAM role for CodeDeploy `CodeDeployServiceRole`


## Step 4: Install CodeDeploy Agent on EC2 
- EC2 instances with:
 - Amazon Linux (AMI)
 - Attach IAM Role - 1
 - Paste User Data given below

```bash
#!/bin/bash
sudo yum -y update
sudo yum -y install ruby
sudo yum -y install wget
cd /home/ec2-user
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
systemctl start codedeploy-agent

```
## Step 5: In CodePipeline Create Application with Deployment Group with IAM - Role-2 and EC2 instance
## Step 6: Create a pipeline with source github with AWS code deploy provider
