# Infra-as-tool
  provision an EC2 instance using Terraform.

# AWS Core Concepts & Terraform EC2 Project

## 📌 Objective
This project is created to understand AWS core concepts and Infrastructure as Code (IaC) using Terraform.

The goal is to:
- Learn AWS fundamentals
- Launch an EC2 instance manually using AWS Console
- Provision an EC2 instance using Terraform
- Document the complete process

---

## AWS Core Concepts Learned- IAM (Users, Roles, Policies)
- EC2 (Elastic Compute Cloud)
- VPC
- Security Groups
- IAM (Users, Roles, Policies)
- Key Pairs
- Regions & Availability Zones

## explaination for above topics:- 


### EC2 (Elastic Compute Cloud)
EC2 is a virtual server provided by AWS.  
It is used to run applications, websites, and commands just like a normal computer, but in the cloud.

### VPC (Virtual Private Cloud)
VPC is a private network in AWS.  
All resources like EC2 instances are created inside a VPC to keep them secure and isolated.

### Security Groups
Security Groups act as a firewall for EC2 instances.  
They control which traffic is allowed or blocked using ports such as SSH (22) or HTTP (80).

### IAM (Users, Roles, Policies)
IAM is used to manage permissions in AWS.  
It decides who can access AWS services and what actions they are allowed to perform.

### Key Pairs
Key pairs are used to log in to EC2 instances securely.  
Instead of a password, AWS uses a key file (.pem) for authentication.

### Regions and Availability Zones
A Region is a geographical location where AWS data centers are located.  
Availability Zones are multiple data centers inside a region to ensure high availability.

---

## Part 1: Launch EC2 Manually (AWS Console)

### Steps Followed:
1. Login to AWS Console
2. Navigate to EC2 Dashboard
3. Click on **Launch Instance**
4. Choose **Amazon Linux AMI**
5. Select instance type: `t2.micro`
6. Create or select key pair
7. Configure Security Group (SSH - port 22)
8. Launch the instance

### Result:
- EC2 instance successfully launched
- Connected to instance using SSH

---

## Part 2: Provision EC2 Using Terraform

### Tools Used:
- Terraform
- AWS CLI
- Git
- Ubuntu EC2

### Terraform Files:
- `provider.tf` – AWS provider configuration
- `main.tf` – EC2 instance resource definition

### Steps:
```bash
terraform init
terraform plan
terraform apply/destroy

### results of this project
<img width="1296" height="1014" alt="image" src="https://github.com/user-attachments/assets/6c7042e7-af94-4ce0-8ae4-bcca9b4f6471" />
<img width="1919" height="880" alt="image" src="https://github.com/user-attachments/assets/f2552d9e-ac38-4a8a-9154-844c70b4a270" />


Thanks and reagrds 
MISS. Manisha Singh.
DEVOPS-Intern.







