terraform {
  backend "s3" {
    bucket = "Netshi_s3_bucket_afs1-prod" #assume there's s3 named as this
    key = "Netshi_prod/shared/state/terraform_state/ec2_creation.tfstate" # store my terraform state file here
    region = "af-south-1" #chose this as my home region
    kms_key_id = "arn:aws:kms:af-south-1/12334509876" #her I dont have s3 encryption key to encrypt the data
    acl = "private"
    encrypt = true
  }
}