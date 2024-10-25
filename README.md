# GCP Terraform Infrastructure

This project automates the deployment of infrastructure on Google Cloud Platform (GCP) using Terraform. It includes:
- VM instances with custom configurations
- Firewall rules for managing access
- Modular design for scalability

## Prerequisites
- **Terraform** installed locally (check the [Terraform installation guide](https://www.terraform.io/downloads.html)).
- A **Google Cloud Platform account** with necessary permissions to create resources.

## Project Structure
├── main.tf               # Root configuration file for the entire project
├── provider.tf           # GCP provider configuration
├── variables.tf          # Variables to be used in Terraform configuration
├── output.tf             # Outputs to provide useful information after deployment
├── terraform.tfvars      # Variable values for customization
├── modules/              # Directory for reusable modules
│   ├── vm-instance/       # Module for provisioning VM instances
│   │   ├── main.tf        # Main configuration for VM instances
│   │   ├── variables.tf    # Variables specific to VM instances
│   │   └── output.tf       # Outputs for VM instances
│   └── firewall/          # Module for configuring firewall rules
│       ├── main.tf        # Main configuration for firewall rules
│       ├── variables.tf    # Variables specific to firewall rules
│       └── output.tf       # Outputs for firewall rules

## Usage Instructions
1. Navigate to the project directory.
2. Initialize the project using `terraform init`.
3. Plan the infrastructure using `terraform plan`.
4. Apply the configuration with `terraform apply`.

## Customization Options
Modify `terraform.tfvars` to set custom values for variables such as `project_id`, `region`, `vm_instance_count`, etc. For example: project_id = "your-gcp-project-id" region = "us-central1" vm_instance_count = 2 firewall_name = "allow-ssh"


## Modules
Each module contains its own set of variables, resources, and outputs:
- **VM Instance Module**: Provisions and configures VM instances based on parameters provided.
- **Firewall Module**: Sets up firewall rules to control access to the VM instances.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
