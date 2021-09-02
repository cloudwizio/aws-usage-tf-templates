
resource "aws_cloudformation_stack" "mcx-usage-account-onboarding" {
    name = "mcx-usage-account-onboarding-stack"
     parameters = {
        tenant = var.mcx_tenant_id,
        token = var.mcx_bearer_token,
        regions =  var.regions,
        domain = var.domain

      }
      capabilities = ["CAPABILITY_IAM"]
    template_url = "https://cloudwizio-assets.s3.amazonaws.com/template-usage-test.yml"
}

