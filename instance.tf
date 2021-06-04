resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
  # the VPC subnet
  subnet_id = var.subnet-id
  # the security group
  vpc_security_group_ids = [aws_security_group.sridhar-ssh.id]
  # the public SSH key
  key_name = aws_key_pair.sree-key.key_name

  tags = {
    Name = "Sridhar-DOCKER"
  }

}


