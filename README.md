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

1. Get a API token at '''<<domain>>>.cloudwiz.io'''
2. Clone the repo
   ```sh
   git clone https://github.com/cloudwizio/terraform
   ```

<!-- USAGE EXAMPLES -->
## Usage

1. For onboarding AWS usage account, please see examples/aws-usage-account

2. Make sure AWS credentials are set up for AWS CLI on your workstation. Alternatively, you can use AWS SSO to set up proper AWS profiles and use the profile for your AWS usage account.

3. Initialize Terraform 
    ```sh 
    terraform init
    ```
3.  Plan 
    ```sh 
    terraform plan
    ```
4. Apply
    ```sh 
    terraform apply
    ```
<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Your Name - info@cloudwiz.io
