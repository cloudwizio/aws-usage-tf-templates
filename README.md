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

1. Get a API token at ```<<domain>>>.cloudwiz.io```
2. Clone the repo
   ```sh
   git clone https://github.com/cloudwizio/terraform
   ```

<!-- USAGE EXAMPLES -->
## Usage

1. For onboarding AWS usage account, please store your profiles(AWS credentials) in ~/.aws/credentials  

2. Make the script executable:
    ```sh 
    chmod +x run-terraform.sh
    ```

3. Run the script
    ```sh 
    ./run-terraform.sh <MCX_TENANT_ID> <MCX_BEARER_TOKEN> <AWS_PROFILE> [profile2] [profile3] ...
    ```
<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

Your Name - info@cloudwiz.io
