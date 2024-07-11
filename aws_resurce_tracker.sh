#!/bin/bash



#####################################
###########Author:Dhruva#############
###########Date:09-07-2024###########
#####################################

#version:v1

###############################
###AWS resoursce usage#########
###############################

#AWS S3
#AWS EC2
#AWS Lambda
#aws IAM users



set -x



#list s3 buckets
echo "S3 buckets are:"
aws s3 ls

#list EC2 instances
echo "ec2 instances:"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "lambda"
aws lambda list-functions


#list IAM users
echo "IAM users:"
aws iam list-users



