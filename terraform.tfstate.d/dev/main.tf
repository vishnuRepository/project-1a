provider "aws" {
  region = var.region
}

module "infrastructure" {
  source = "../../modules"

  # Pass variables from your variables.tf/tfvars
  environment   = terraform.workspace
  db_username   = var.db_username
  db_password   = var.db_password

  # Logical override: Uses t3.medium if in 'dev' workspace, 
  # otherwise falls back to the variable's default (t3.micro)
  instance_type = terraform.workspace == "dev" ? "t3.medium" : var.instance_type
}