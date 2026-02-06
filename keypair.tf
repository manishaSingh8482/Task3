# Generate a private/public key pair
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Upload the public key to AWS as an EC2 key pair
resource "aws_key_pair" "ec2_key" {
  key_name   = "terraform-generated-key"
  public_key = tls_private_key.ec2_key.public_key_openssh
}

# Save the private key locally as a .pem file
resource "local_file" "ec2_pem" {
  content         = tls_private_key.ec2_key.private_key_pem
  filename        = "${path.module}/terraform-generated-key.pem"
  file_permission = "0400"
}

