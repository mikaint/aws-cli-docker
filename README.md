[![Build Status](https://travis-ci.org/mikaint/aws-cli-docker.svg?branch=master)](https://travis-ci.org/mikaint/aws-cli-docker)

# AWS CLI (dockerized)
A docker image with AWS CLI installed.

## Configuration
The first step in order to use AWS CLI image is to set the required environmental variables to be used in the container.
```
cp .env.dist .env
```
Edit .env file with your values (can be obtained from AWS IAM)

## How to use


Default command is `--version` so if you run 
```
docker run mikaint/awscli
```
you'll get something like
```
aws-cli/1.16.216 Python/2.7.16 Linux/4.9.184-linuxkit botocore/1.12.206
```
The above command will run even without setting your configuration values as it will not make a request to AWS

In order to run any other command that will make a request to AWS you'll need to specify your file that contains the configuration values
```
docker run --env-file=.env mikaint/awscli ec2 describe-instances
```
For a full list of available commands please check the official AWS CLI [documentation page](https://docs.aws.amazon.com/cli/index.html)

