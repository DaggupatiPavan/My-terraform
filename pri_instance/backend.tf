terraform {
  backend "s3" {
    bucket = "pe2dev"
    key    = "platform_Enginnering/private_Instance/xyz1/terraform.tfstate"
    region = "us-east-1"
  }
}

output "s3_backend_path" {
  value = "s3://${terraform.backend["s3"].bucket}/${terraform.backend["s3"].key}"
}
