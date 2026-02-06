Terraform EC2 Key Pair & Strapi Deployment
 Project Overview

This project demonstrates a production-style Terraform setup to:

Generate an SSH key pair using Terraform

Provision an AWS EC2 instance using a reusable module

Securely access the EC2 instance using the generated key

Deploy and run a Strapi application on the EC2 instance

Troubleshoot and resolve real-world infrastructure and access issues
terraform-ec2-keypair/
│
├── main.tf
├── provider.tf
├── variables.tf
├── keypair.tf
├── terraform.tfvars
│
├── modules/
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md
# File & Folder Explanation
Root Module Files

main.tf
Calls the EC2 module and passes required values such as instance type and key name.

provider.tf
Configures the AWS provider and region.

variables.tf
Declares input variables used across the root module.

terraform.tfvars
Stores environment-specific values like region, instance type, and key name.

keypair.tf
Generates an RSA SSH key pair using the Terraform TLS provider and uploads the public key to AWS as an EC2 key pair.
Module: modules/ec2

main.tf
Defines the EC2 instance resource using inputs passed from the root module.

variables.tf
Declares required inputs such as AMI ID, instance type, and key name.

outputs.tf
Exposes EC2 instance values such as the public IP address.

# SSH Key Pair Creation (Terraform-Managed)

The SSH key pair is fully managed by Terraform to avoid manual key creation.

Steps Performed

Terraform generates a 4096-bit RSA private key using the tls_private_key resource.

The public key is extracted in OpenSSH format.

The public key is uploaded to AWS using the aws_key_pair resource.

The key name is passed to the EC2 module during instance creation.

The private key is stored locally and used for SSH access.

Benefits

No manual key creation

Fully reproducible infrastructure

Secure and automated SSH access

# Troubleshooting & Issues Resolved

This project involved resolving several real-world issues during setup.

# SSH Connection Failure

Problem:
Unable to SSH into EC2 instance despite allowing port 22 in the security group.

Resolution:

Verified correct username (ec2-user for Amazon Linux / Ubuntu user for Ubuntu AMI)

Fixed private key file permissions:

chmod 400 private_key.pem


Confirmed correct public IP and security group rules

# Terraform Output Reference Error

Problem:
Terraform error:

Reference to undeclared resource aws_instance.this


Resolution:

Identified incorrect resource reference in root outputs.tf

Corrected output to reference the EC2 module output instead of a local resource

# Key Pair Mismatch Issue

Problem:
EC2 instance launched with a different or missing key pair.

Resolution:

Ensured EC2 module receives key_name from aws_key_pair resource

Re-applied Terraform to recreate EC2 with the correct key

# Instance State & Billing Confusion

Problem:
Uncertainty about stopping vs terminating EC2 instances created via Terraform.

Resolution:

Understood that stopped instances still incur EBS charges

Terminated unused instances safely from AWS Console when Terraform state was unavailable
# strapi Application Setup on EC2

After successfully accessing the EC2 instance, a Strapi application was deployed.

Steps Performed

Connected to EC2 using SSH:

ssh -i private_key.pem ubuntu@<EC2_PUBLIC_IP>


Installed Node Version Manager (NVM)

Installed Node.js (v20) using NVM:

nvm install 20
nvm use 20


Installed required dependencies (npm/yarn)

Created and started the Strapi application:

npx create-strapi-app my-strapi-app
cd my-strapi-app
npm run develop


Verified Strapi application accessibility via EC2 public IP and port.
