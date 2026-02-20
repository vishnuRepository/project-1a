# provider

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # pin to a stable version
    }
  }

  required_version = ">= 1.5.0"
}
