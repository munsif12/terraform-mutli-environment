# 🌟 Terraform Project README 🌟

## 🌍 Project Overview

This repository contains Terraform configurations to provision and manage infrastructure for `development` and `production` environments, organized into separate folders. 🚀

### 🗂️ Project Structure

```
Terraform_Infra
├───environment
│   ├───development  # Terraform configuration for the development environment
│   └───production   # Terraform configuration for the production environment
└───modules          # Contains reusable Terraform modules
```

## 🛠️ Installation and Running the Project

### ✅ Prerequisites

Ensure you have the following tools installed:

1. [Terraform](https://www.terraform.io/downloads) (v1.x or higher) 🌐
2. Appropriate cloud CLI tools (e.g., AWS CLI, gcloud, or Azure CLI), if applicable.

### 🚀 Steps to Run

1. **Clone the Repository**

   ```bash
   git clone https://github.com/munsif12/terraform-mutli-environment.git
   cd Terraform_Infra
   ```

2. **Navigate to the Environment Directory**
   Choose the environment you want to deploy (e.g., `development` or `production`):

   ```bash
   cd environment/development
   # or
   cd environment/production
   ```

3. **Initialize Terraform**
   Run the following command to initialize Terraform, download provider plugins, and configure the backend:

   ```bash
   terraform init
   ```

4. **Plan and Apply the Configuration**
   - To see the execution plan:

     ```bash
     terraform plan
     ```

   - To apply the configuration and provision the infrastructure:

     ```bash
     terraform apply
     ```

## 🏆 Best Practices

- 🗂️ Use `.tfvars` files to manage environment-specific variables securely.
- 🔒 Keep separate state files for each environment to prevent conflicts.
- 🔄 Regularly review and update the `terraform.lock.hcl` file by running `terraform init` to keep providers updated.

## 🧹 Cleaning Up

To destroy the resources created by Terraform for a specific environment, navigate to the respective folder and run:

```bash
cd environment/development
terraform destroy

# or for production
cd environment/production
terraform destroy
```

## 🤝 Contributing

If you'd like to contribute to this project:

1. Submit a pull request with a detailed explanation of the changes.

---
🌱 **Happy Terraforming!** 🌟
