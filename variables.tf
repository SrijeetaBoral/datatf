variable "aws_region" {
  description = "AWS region for all the resources"
  type        = string
}

variable "project_id" {
  description = "project identifier used for tagging"
  type        = string
}

variable "vpc_name" {
  description = "the name of the vpc to discover"
  type        = string
}

variable "public_subnet_name" {
  description = "the name of the public subnet to discover"
  type        = string
}

variable "security_group_name" {
  description = "the name of the security group to discover"
  type        = string
}

variable "ami_owner" {
  description = "owner of ami"
  type        = string
}

variable "ami_name_pattern" {
  description = "name pattern of ami"
  type        = string
}

variable "ami_architecture" {
  description = "architecture of ami"
  type        = string
}

variable "ami_virtualization_type" {
  description = "virtualization type of ami"
  type        = string
}

variable "ami_filters" {
  description = "Map of AMI filter names to their values used to discover the Amazon Lnux 2023 AMI"
  type        = map(list(string))
}

variable "instance_type" {
  description = "Type of the instance"
  type        = string
}

variable "ami_most_recent" {
  description = "Whether to select the most recent matching AMI"
  type        = bool
}
