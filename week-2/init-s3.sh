#!/bin/bash

BUCKET_NAME="week2avlasov"

echo "Creating S3 bucket" > ./small.txt &&\
  aws s3 mb --profile=lohika --region us-west-2 s3://${BUCKET_NAME} &&\
  aws s3api put-bucket-versioning --bucket ${BUCKET_NAME} --profile=lohika --region us-west-2 --versioning-configuration Status=Enabled &&\
  aws s3api put-public-access-block --public-access-block-configuration IgnorePublicAcls=true --profile lohika --region us-west-2 --bucket ${BUCKET_NAME} &&\
  aws s3 cp --profile=lohika --region us-west-2 ./small.txt s3://${BUCKET_NAME}/small.txt