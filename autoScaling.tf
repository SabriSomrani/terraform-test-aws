resource "aws_autoscaling_group" "tekup_test_ASG" {
  vpc_zone_identifier       = [for subnet in aws_subnet.private_subnets : subnet.id]
  desired_capacity          = 2
  max_size                  = 2
  min_size                  = 2
  target_group_arns         = [aws_lb_target_group.tekup_test_TG.arn]
  health_check_type         = "ELB"
  health_check_grace_period = 30

  launch_template {
    id = aws_launch_template.tekup_test_tmp.id
  }


}
