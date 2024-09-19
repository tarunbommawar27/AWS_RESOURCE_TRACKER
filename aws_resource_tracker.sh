#!/bin/bash


##########################
#Author: Tarun
#Date: 09/18/2024
#
#Version: 1
#
#This script will report the aws resource usage
#########################

set -x

#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM USERS


#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> resourceTracker


#list ec2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker



#list lambda
echo "Print list of Lambda"
aws lambda list-functions >> resourceTracker

#list IAM users
echo "Print list of IAM users"
aws iam list-users >>resourceTracker
