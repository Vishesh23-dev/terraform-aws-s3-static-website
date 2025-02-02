terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
  access_key                  = "mock_access_key" # tfsec:ignore:general-secrets-no-plaintext-exposure
  secret_key                  = "mock_secret_key" # tfsec:ignore:general-secrets-no-plaintext-exposure
  alias                       = "main"
}

provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_use_path_style           = true
  access_key                  = "mock_access_key" # tfsec:ignore:general-secrets-no-plaintext-exposure
  secret_key                  = "mock_secret_key" # tfsec:ignore:general-secrets-no-plaintext-exposure
  alias                       = "acm_provider"
}
