# AWS

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

```
aws configure
# or
aws configure --profile ${CUSTOM_PROFILE}
```

```
# ECR authorize.
aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${AWS_REGISTRY_URL}

# ECR pull images.
aws ecr list-images --repository-name ${AWS_REPOSITORY_BACK}
``` 

```
# Get list of S3 files.
aws s3 ls s3://${BUCKET}/ --profile ${CUSTOM_PROFILE}
```
