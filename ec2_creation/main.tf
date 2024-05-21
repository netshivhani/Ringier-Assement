terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }

    github ={
        source = "intergration/github"
        version = "~> 4.0"
    }
  }
}