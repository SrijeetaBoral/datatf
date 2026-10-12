output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.this.id

}

output "ami_id" {
  description = "ID of the discovered Amazon Linux 2023 AMI"
  value       = data.aws_ami.al2023.id

}