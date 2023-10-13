#!/bin/bash

if [ $# -lt 2 ]; then
  echo "Usage: $0 <TENANT_ID> <BEARER_TOKEN> <profile1> [profile2] [profile3] ..."
  exit 1
fi

TENANT_ID="$1"
BEARER_TOKEN="$2"
shift 2

AWS_PROFILES=("$@")

if [ ${#AWS_PROFILES[@]} -eq 0 ]; then
  AWS_PROFILES=("default")
fi

for profile in "${AWS_PROFILES[@]}"; do
  echo "Running Terraform for profile: $profile"

  export AWS_PROFILE="$profile"

  cd /modules/aws-usage-account/

  terraform init

  terraform plan -var "aws_profile=$AWS_PROFILE" -var "tenant_id=$TENANT_ID" -var "bearer_token=$BEARER_TOKEN"

  exit_code=$?

  if [ $exit_code -eq 0 ]; then
    echo "Terraform plan for profile $profile completed successfully."

    terraform apply -var "aws_profile=$AWS_PROFILE" -var "tenant_id=$TENANT_ID" -var "bearer_token=$BEARER_TOKEN"

    apply_exit_code=$?

    if [ $apply_exit_code -eq 0 ]; then
      echo "Terraform apply for profile $profile completed successfully."
    else
      echo "Terraform apply for profile $profile failed with exit code $apply_exit_code."
    fi
  else
    echo "Terraform plan for profile $profile failed with exit code $exit_code."
  fi

  cd -
done

echo "All Terraform runs have completed."
