provider "aws" {
  region = "us-east-1"
  profile = local.aws_profile
}

locals {
  tenant_id    = "h6rbwskbwf_6x5h6"   
  bearer_token = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjJjZGFiZDIwNzVjODQxNDI0NDY3MTNlM2U0NGU5ZDcxOGU3YzJkYjQiLCJ0eXAiOiJKV1QifQ.eyJuYW1lIjoiU2FmaSBTaWRkaXF1aSIsImlzcyI6Imh0dHBzOi8vc2VjdXJldG9rZW4uZ29vZ2xlLmNvbS9jbG91ZHdpei1pbyIsImF1ZCI6ImNsb3Vkd2l6LWlvIiwiYXV0aF90aW1lIjoxNjMxMDY1OTc1LCJ1c2VyX2lkIjoiTmgyVE1JUGtQU05zbHFMS0ZOYXcxeHBrTXZXMiIsInN1YiI6Ik5oMlRNSVBrUFNOc2xxTEtGTmF3MXhwa012VzIiLCJpYXQiOjE2MzEwNzI3ODUsImV4cCI6MTYzMTA3NjM4NSwiZW1haWwiOiJzc2lkZGlxdWlAY2xvdWR3aXouaW8iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiZmlyZWJhc2UiOnsiaWRlbnRpdGllcyI6eyJzYW1sLmNsb3Vkd2l6LWlvLWg2cmJ3c2tid2ZfNng1aDYiOlsic3NpZGRpcXVpQGNsb3Vkd2l6LmlvIl0sImVtYWlsIjpbInNzaWRkaXF1aUBjbG91ZHdpei5pbyJdfSwic2lnbl9pbl9wcm92aWRlciI6InNhbWwuY2xvdWR3aXotaW8taDZyYndza2J3Zl82eDVoNiIsInNpZ25faW5fYXR0cmlidXRlcyI6eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy9kaXNwbGF5bmFtZSI6IlNhZmkgU2lkZGlxdWkiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2lkZW50aXR5L2NsYWltcy90ZW5hbnRpZCI6IjY1OTBlZTMwLTJiYjgtNGFkNS05YmFiLTUzYTk0MjdmZjRlZiIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vaWRlbnRpdHkvY2xhaW1zL2lkZW50aXR5cHJvdmlkZXIiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC82NTkwZWUzMC0yYmI4LTRhZDUtOWJhYi01M2E5NDI3ZmY0ZWYvIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9pZGVudGl0eS9jbGFpbXMvb2JqZWN0aWRlbnRpZmllciI6ImM5NWQyNTFlLTg3NTQtNDBhNS1iNThiLTdlZmRmZmIzNjY3ZiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2dpdmVubmFtZSI6IlNhZmkiLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoic3NpZGRpcXVpQGNsb3Vkd2l6LmlvIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS9jbGFpbXMvYXV0aG5tZXRob2RzcmVmZXJlbmNlcyI6WyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvYXV0aGVudGljYXRpb25tZXRob2QvcGFzc3dvcmQiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL2NsYWltcy9tdWx0aXBsZWF1dGhuIl0sImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3N1cm5hbWUiOiJTaWRkaXF1aSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InNzaWRkaXF1aUBjbG91ZHdpei5pbyJ9LCJ0ZW5hbnQiOiJoNnJid3NrYndmLTZ4NWg2In19.JZ77OlcYA3oK1fJ0yKWGCmmJC6tK0aq9Z0XlG_11MQTjmGuP-HO3xHRx_SWqzTGONCdSue08prXuM7vEbjylyMlF1W4lRGkGE3dDBhq3iCOugxgJryLtRVVNcu43MYkghl3p5hsAGRv1hAM16OJ761eR2yFQXeyeTrfzrlqYE3IjqH4sLeDZS8htAb05SnogDXIxFeYC0n9_838TFn6LqAILltxkSz4nDtAF9KufDW4GpFJTy3_Jqj0DSARmKg6kgXSxBjiQPz6XSMh0X9jCI091Slg5h2usUFJRIutu0PwTp2opFmn5FTG6qRHOSGQDF5yO7Ldg8vWzZGseZZ4YEQ"
  aws_profile  = "3cubes-profile"
  regions      = ""
  }

module "aws-usage-account" {
  source           = "../../modules/aws-usage-account"
  tenant_id        = local.tenant_id
  bearer_token     = local.bearer_token
  regions          = local.regions,
  operation        = "create"
}

