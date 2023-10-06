output "cloud-formation-stack-id"{
    value = aws_cloudformation_stack.dx-usage-account-onboarding-stack.id
    description = "Cloudformation stack id"
}