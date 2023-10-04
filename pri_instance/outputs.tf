output "instance_private_ip" {
   value = aws_instance.priv_instance[*].private_ip
}
output "instance_IDs" {
  value = aws_instance.priv_instance[*].id
}

output "s3_backend_path" {
  value = "s3://${terraform.backend["s3"].bucket}/${terraform.backend["s3"].key}"
}
