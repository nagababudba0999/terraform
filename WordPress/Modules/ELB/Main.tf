variable "instance-id" {
  type = "string"
}


resource "aws_lb" "wordpress_alb" {
    name = "WordPress-alb"
    load_balancer_type = "application"
    subnets = [var.Public_Subnets[0], var.Public_Subnets[1]]
    security_groups = [var.ALB_SG[0]]
    

    tags = {
    Name = "WordPress_alb"
  }
}


resource "aws_lb_target_group" "wordpress_targetgroup" {
  name     = "wordpress-targetgroup"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.VPC_Id
  health_check {
    path = "/"
    port = 80
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 2
    interval = 5
    matcher = "302"  
  }

  tags = {
    Name = "wordpress_targetgroup"
  }
}


resource "aws_lb_target_group_attachment" "test" {
  target_group_arn = aws_lb_target_group.wordpress_targetgroup.arn
  target_id        = var.instance-id
  port             = 80
}


resource "aws_lb_listener" "wordpress-listerner" {
  load_balancer_arn = aws_lb.wordpress_alb.arn
  port              = "80"
  protocol          = "HTTP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.wordpress_targetgroup.arn
  }
}

