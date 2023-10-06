<!-- PROJECT LOGO -->

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- GETTING STARTED -->
## Getting Started



### Prerequisites

1. Install Terraform
   

### Installation

1. Get a JWT Token from your tenant(eg: demo.digitalex.io). Navigate to Side Bar > Admin > API
2. Clone the repo
   ```sh
   git clone https://github.com/cloudwizio/aws-usage-tf-templates.git
   ```

<!-- USAGE EXAMPLES -->
## Usage

# Run as a module (from your existing terraform configurations)
This step assumes that you already have some existing Terraform configurations that are applied to all your accounts when run. In this case, you can simply copy the module and call it from your existing configurations.

1. Add the Module to Your Configuration:

In your existing Terraform configuration file (e.g., main.tf), add a module block to use our module:

```sh
module "aws-usage-account" {
  source           = "../../modules/v2"
  tenant_id        = "h6rbwskbwf_6x5h6"  # replace with your DigitalEx tenant id
  bearer_token     = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjJjZGFiZDIwNzVjODQxNDI0NDY3MTNlM2U0NGU5ZDcxOGU3YzJkYjQiLCJ0eXAiOiJKV1QifQ..." # replace with DigitalEx JWT token
  aws_profile      = "default" # replace with aws profile name present in ~/.aws/credentials
}
```

2. Run terraform init:
Initialize your Terraform workspace to download any necessary provider plugins and set up the module.

```sh
  terraform init
```

3. Run terraform plan:
To see the changes Terraform will apply, generate and review a plan:

```sh
  terraform plan
```

4. Apply Terraform Changes:
Apply the changes to incorporate our module into your infrastructure:

```sh
  terraform apply
```

# Onboard multiple AWS usage accounts using shell script:

For onboarding AWS usage account, please store all your profiles(AWS credentials) in ~/.aws/credentials  
Shell will read all the profile from credentials and onboard each account one-by-one.

1. Make the script executable:
    ```sh 
    chmod +x run-terraform.sh
    ```

2. Run the script
    ```sh 
    ./run-terraform.sh <TENANT_ID> <BEARER_TOKEN> <AWS_PROFILE> [profile2] [profile3] ...
    ```
<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Your Name - support@digitalex.io
