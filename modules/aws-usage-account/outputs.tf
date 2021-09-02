output "cloud-formation-stack-id"{
    value = aws_cloudformation_stack.mcx-usage-account-onboarding.id
    description = "Cloudformation stack id"
}