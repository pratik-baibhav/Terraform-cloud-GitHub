terraform {
    required_version = "~> 1.11.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.94.1"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "PratikInfra" {
	ami = "ami-00a929b66ed6e0de6" 
	instance_type = "t2.small"
}
