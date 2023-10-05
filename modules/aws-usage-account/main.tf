provider "aws" {
  region = "us-east-1"
  profile = var.aws_profile
}


resource "aws_cloudformation_stack" "dx-usage-account-onboarding-stack" {
    name = "dx-usage-account-onboarding-stack"
     parameters = {
        tenant    = var.tenant_id,
        token     = var.bearer_token,
        regions   = var.regions,
        operation = "create"
      }
      capabilities = ["CAPABILITY_IAM"]
    template_url = "https://digitalex-assets.s3.amazonaws.com/cloudwiz-io/usage/v2/template.yaml"
}

