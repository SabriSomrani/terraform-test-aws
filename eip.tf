resource "aws_eip" "tekup_test_eip" {
  vpc = true

  tags = {
    Name = "tekup-test-eip"
  }

}
