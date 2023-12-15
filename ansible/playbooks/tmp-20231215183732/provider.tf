


terraform {
 backend "s3" {
      access_key                  = "some shit goes here"
      secret_key                  = "kdgjkgdslajglda"
      bucket                      = "kjdflsdgklasga"
      key                         = "terraform.tfstate"
      endpoint                    = ndlkgngalksdngla
      region                      = "us-east-1"
      skip_credentials_validation = true
      skip_metadata_api_check     = true
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  access_key = "gdklsajgkldajga"
  secret_key = "dnlkjgajlkdgja"
      region = "us-east-1"
  }