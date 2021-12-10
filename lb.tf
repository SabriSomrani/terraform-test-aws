resource "aws_lb" "tekup_test_lb" {
  name               = "tekup-test-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [for subnet in aws_subnet.public_subnets : subnet.id]

  tags = {
    Name = "tekup-test-lb"
  }
}


resource "aws_lb_target_group" "tekup_test_TG" {
  name             = "tekup-test-TG"
  port             = 8000
  protocol         = "HTTP"
  protocol_version = "HTTP1"
  vpc_id           = aws_vpc.tekup_test_vpc.id

}


resource "aws_lb_listener" "tekup_test_listener" {
  load_balancer_arn = aws_lb.tekup_test_lb.arn
  port              = "8000"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tekup_test_TG.arn
  }
}


