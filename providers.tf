terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Test-Roza"

    workspaces {
      name = "hcp-terraform-task-1a"
    }
  }
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.5.0"
    }
  }

  required_version = ">=0.13.2"
}
