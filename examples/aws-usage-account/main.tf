provider "aws" {
  region = "us-east-1"
  profile = "3cubes-profile"
}

locals {
  mcx_tenant_id    = "xudzbzgz4a_xh126"
  mcx_bearer_token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjJjZGFiZDIwNzVjODQxNDI0NDY3MTNlM2U0NGU5ZDcxOGU3YzJkYjQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL3NlY3VyZXRva2VuLmdvb2dsZS5jb20vc2FuZGJveC0zMDk4MDMiLCJhdWQiOiJzYW5kYm94LTMwOTgwMyIsImF1dGhfdGltZSI6MTYzMDU2NDc1MCwidXNlcl9pZCI6IlJjM2NPclNaMkpnMEs1czFLRHpybTJuMThNTzIiLCJzdWIiOiJSYzNjT3JTWjJKZzBLNXMxS0R6cm0ybjE4TU8yIiwiaWF0IjoxNjMwNTY2NTUyLCJleHAiOjE2MzA1NzAxNTIsImVtYWlsIjoic3NpZGRpcXVpQGNsb3Vkd2l6LmlvIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImZpcmViYXNlIjp7ImlkZW50aXRpZXMiOnsic2FtbC5zYW5kYm94LTMwOTgwMy14dWR6YnpnejRhX3hoMTI2IjpbInNzaWRkaXF1aUBjbG91ZHdpei5pbyJdLCJlbWFpbCI6WyJzc2lkZGlxdWlAY2xvdWR3aXouaW8iXX0sInNpZ25faW5fcHJvdmlkZXIiOiJwYXNzd29yZCIsInRlbmFudCI6Inh1ZHpiemd6NGEteGgxMjYifX0.c05I9DuuXMvZYmHaTCD3VYyJ1HOm1rMVxgK0mx6BDF2A36P_mqeKuvaQKSWCX2liV9V6WA4KwSpcw3HtE858iYFIpSDePs2ecFsIii_tuYCNRrDJu3HNMOEa3c8yFOkQo_-rA1NOy-7gr27cOOeKDfwFIE6LhyJzG0VsyE1s9GgTWG3tW63Voq6aFUAQBbxPeGVciPKfJKENjdWIM2ybEQ3sGTqk_6eIEeUGl8G1YW2qG8ENoKzwUsoPZtnhpC1ppVY-tV44MpV-N4l3zZ-0SIsoofztFKou486ZNadFiutAzHiB9X2MGPOZaZ03nnKdKHZNod5lC27uFAp6F10Feg"
}
module "aws-usage-account" {
  source           = "../../modules/aws-usage-account"
  mcx_tenant_id    = local.mcx_tenant_id
  mcx_bearer_token = local.mcx_bearer_token
  domain           = "cloudwiz"
  regions          = ""
}

