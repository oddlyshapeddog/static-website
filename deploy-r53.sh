#!/bin/sh

aws cloudformation deploy \
  --template route53-zone.yaml \
  --stack-name OSDWebsiteR53 \
  --parameter-overrides DomainName=shaped.dog \
  --region us-west-2 \
  --profile admin
