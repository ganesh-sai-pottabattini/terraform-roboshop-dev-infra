resource "aws_security_group_rule" "mongodb_catalogue" {
  security_group_id = local.mongodb_sg_id
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  source_security_group_id = local.catalogue_sg_id
}

resource "aws_security_group_rule" "mongodb_user" {
  security_group_id = local.mongodb_sg_id
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  source_security_group_id = local.user_sg_id
}

resource "aws_security_group_rule" "mongodb_bastion" {
  security_group_id = local.mongodb_sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "redis_user" {
  security_group_id = local.redis_sg_id
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  source_security_group_id = local.user_sg_id
}

resource "aws_security_group_rule" "redis_cart" {
  security_group_id = local.redis_sg_id
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  source_security_group_id = local.cart_sg_id
}

resource "aws_security_group_rule" "redis_bastion" {
  security_group_id = local.redis_sg_id
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "mysql_shipping" {
  security_group_id = local.mysql_sg_id
  type = "ingress"
  from_port = 3306
  to_port = 3306
  protocol = "tcp"
  source_security_group_id = local.shipping_sg_id
}

resource "aws_security_group_rule" "mysql_bastion" {
  security_group_id = local.mysql_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "rabbitmq_payment" {
  security_group_id = local.rabbitmq_sg_id
  type = "ingress"
  from_port = 5672
  to_port = 5672
  protocol = "tcp"
  source_security_group_id = local.payment_sg_id
}

resource "aws_security_group_rule" "rabbitmq_bastion" {
  security_group_id = local.rabbitmq_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "catalogue_backend_alb" {
  security_group_id = local.catalogue_sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "catalogue_bastion" {
  security_group_id = local.catalogue_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "user_backend_alb" {
  security_group_id = local.user_sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "user_bastion" {
  security_group_id = local.user_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "cart_backend_alb" {
  security_group_id = local.cart_sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "cart_bastion" {
  security_group_id = local.cart_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "shipping_backend_alb" {
  security_group_id = local.shipping_sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "shipping_bastion" {
  security_group_id = local.shipping_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "payment_backend_alb" {
  security_group_id = local.payment_sg_id
  type = "ingress"
  from_port = 8080
  to_port = 8080
  protocol = "tcp"
  source_security_group_id = local.backend_alb_sg_id
}

resource "aws_security_group_rule" "payment_bastion" {
  security_group_id = local.payment_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "backend_alb_catalogue" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.catalogue_sg_id
}

resource "aws_security_group_rule" "backend_alb_user" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.user_sg_id
}

resource "aws_security_group_rule" "backend_alb_cart" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.cart_sg_id
}

resource "aws_security_group_rule" "backend_alb_shipping" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.shipping_sg_id
}

resource "aws_security_group_rule" "backend_alb_payment" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.payment_sg_id
}

resource "aws_security_group_rule" "backend_alb_bastion" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "backend_alb_frontend" {
  security_group_id = local.backend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.frontend_sg_id
}

resource "aws_security_group_rule" "frontend_frontend_alb" {
  security_group_id = local.frontend_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  source_security_group_id = local.frontend_alb_sg_id
}

resource "aws_security_group_rule" "frontend_bastion" {
  security_group_id = local.frontend_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "frontend_alb_http" {
  security_group_id = local.frontend_alb_sg_id
  type = "ingress"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "frontend_alb_https" {
  security_group_id = local.frontend_alb_sg_id
  type = "ingress"
  from_port = 443
  to_port = 443
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "frontend_alb_bastion" {
  security_group_id = local.frontend_alb_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  source_security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "bastion_my_ip" {
  security_group_id = local.bastion_sg_id
  type = "ingress"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["${chomp(data.http.my_public_ip.response_body)}/32"]
}