provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "bastion_sg" {
  name        = "bastion-host-sg"
  description = "Allow SSH inbound traffic from specified IPs"
  vpc_id      = var.vpc_id

  ingress {
    description      = "SSH access from allowed IPs"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.allowed_ssh_cidr_blocks
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(var.tags, {
    Name = "bastion-host-sg"
  })
}

data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "bastion_host" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.bastion_instance_type
  subnet_id              = var.public_subnet_id
  key_name               = var.bastion_key_name
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  associate_public_ip_address = true

  tags = merge(var.tags, {
    Name = "bastion-host"
  })
}