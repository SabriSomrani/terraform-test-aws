

resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.ami_id.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnets[0].id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  key_name               = "terraform-key"

  tags = {
    Name = "Bastion-Host"
  }
  
}

