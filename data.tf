data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]

  }

}

data "aws_subnet" "public" {
  vpc_id = data.aws_vpc.selected.id


  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }

}

data "aws_security_group" "selected" {
  vpc_id = data.aws_vpc.selected.id

  filter {
    name   = "tag:Name"
    values = [var.security_group_name]
  }
}

data "aws_ami" "al2023" {
  most_recent = var.ami_most_recent
  owners      = [var.ami_owner]


  dynamic "filter" {
    for_each = var.ami_filters

    content {

      name   = filter.key
      values = filter.value
    }

  }

}