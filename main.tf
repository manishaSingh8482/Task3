module "ec2" {
  source = "./modules/ec2"

  instance_name    = var.instance_name
  instance_type    = var.instance_type
  subnet_id        = var.subnet_id
  vpc_id           = var.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr

  key_name = aws_key_pair.ec2_key.key_name
}


