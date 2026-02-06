# Task3 – Terraform EC2 + Strapi DevOps Project 

This repository demonstrates a **DevOps-style monorepo** containing
**Infrastructure as Code (IaC)** using Terraform and a **Strapi application**
deployed on AWS EC2.

---

##  Project Overview

The goal of this project is to understand and implement:

- AWS core services (EC2, IAM, Security Groups)
- Infrastructure provisioning using **Terraform**
- Application deployment using **Strapi (Node.js)**
- Real-world **Git & DevOps workflows**

---

##  Architecture

- **Terraform** provisions AWS EC2 infrastructure
- **EC2 (Ubuntu)** hosts the Strapi application
- SSH access configured securely
- Infrastructure and application managed in a single repository

---

##  Repository Structure

```text
Task3/
├── terraform/          # Terraform IaC for AWS EC2
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── strapi-app/         # Strapi application source code
│
├── runners/            # (Optional) CI / DevOps related assets
│
├── .gitignore
└── README.md
