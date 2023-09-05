#!/bin/sh

aws cloudformation deploy \
  --template simple-s3-static-website-with-cloudfront-and-route-53.yaml \
  --stack-name OSDWebsiteS3 \
  --parameter-overrides DomainName=shaped.dog FullDomainName=oddly.shaped.dog \
  --region us-west-2 \
  --profile osd_website
