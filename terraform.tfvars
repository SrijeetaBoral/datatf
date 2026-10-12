aws_region              = "eu-west-1"
project_id              = "cmtr-698agnc5"
vpc_name                = "cmtr-698agnc5-vpc"
public_subnet_name      = "cmtr-698agnc5-public-subnet-1"
security_group_name     = "cmtr-698agnc5-sg"
ami_owner               = "amazon"
ami_name_pattern        = "al2023-ami-2023.*-x86_64"
ami_architecture        = "x86_64"
ami_virtualization_type = "hvm"
ami_filters = {
  name                = ["al2023-ami-2023.*-x86_64"]
  architecture        = ["x86_64"]
  virtualization-type = ["hvm"]
}
instance_type   = "t3.micro"
ami_most_recent = "true"