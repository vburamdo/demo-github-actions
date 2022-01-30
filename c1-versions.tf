terraform {
  required_version = "~> 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  cloud {
    organization = "buramdododdi"

    workspaces {
      name = "gh-actions-demo-UAT"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
