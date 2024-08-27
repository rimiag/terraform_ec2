# EC2 Instance Deployment with Terraform

This project demonstrates how to deploy an EC2 instance on AWS using Terraform. The configuration includes user-defined variables, user data for initial setup, and a separate script for installing Docker and Docker Compose.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with appropriate credentials
- An AWS account

## Project Structure


## Configuration

1. **main.tf**: The core Terraform configuration file that defines the AWS provider, EC2 instance, security group, and other necessary resources.

2. **variables.tf**: This file contains the variables that allow for customization of the EC2 instance, such as the AMI ID, region, instance type, and more.

3. **user_data.sh**: A shell script that will be executed on the EC2 instance upon launch. It installs Docker and Docker Compose on an Ubuntu system.

## Steps to Deploy

1. **Clone the repository:**

    ```bash
    
    git clone https://github.com/rimiag/terraform_ec2.git
    cd ec2-terraform
    ```

2. **Initialize Terraform:**

    Initialize the Terraform project by downloading necessary plugins and preparing the backend:

    ```bash
    terraform init
    ```

3. **Configure Variables:**

    Modify the `variables.tf` file to define your desired values for the AMI, region, instance type, and more.

4. **Plan the Deployment:**

    Run the Terraform plan command to see what changes will be made:

    ```bash
    terraform plan
    ```

5. **Apply the Deployment:**

    Deploy the EC2 instance by running:

    ```bash
    terraform apply
    ```

    Confirm the deployment when prompted.

6. **Access Your Instance:**

    Once Terraform has completed the deployment, you will see the public IP address of the EC2 instance. Use SSH to connect to the instance:

    ```bash
    ssh ubuntu@<public_ip>
    ```

## Security Group Configuration

The security group is configured to allow inbound traffic on the following ports:
- **22 (SSH)**: From anywhere
- **80 (HTTP)**: From anywhere
- **443 (HTTPS)**: From anywhere

## Customization

Feel free to customize the Terraform configuration, variables, and user data script to suit your specific needs.

## Cleanup

To destroy the infrastructure and avoid incurring costs, run:

```bash
terraform destroy


You can adjust the contents based on your specific configuration and usage requirements.
