resource "aws_launch_template" "tekup_test_tmp" {
  name                   = "tekup-test-tmp"
  description            = "my app"
  image_id               = data.aws_ami.ami_id.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  user_data              = filebase64("user-data.sh")

  tags = {
    Name = "tekup-test-tmp"
  }


}
