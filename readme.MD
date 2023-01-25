# Configure Vault for Azure Dynamic DB Demo

This Terraform code will configure HashiCorp Vault with the necessary values for my Azure Dynamic DB demo.

## Terraform Code

The Terraform code in this repo will be responsible for:

* Enable Azure Secrets Engine
* Configure Azure Secrets Engine

## Consuming

* Rename `variables.example` to `variables.tfvars`
* Populate the correct information for your environment in `variables.tfvars`
* Run `terraform init`
* Run `terraform plan` and validate 3 items to be added.
* Run `terraform apply -auto-approve` to add the k/v and two k/v entries.
