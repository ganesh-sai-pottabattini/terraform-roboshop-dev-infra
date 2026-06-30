resource "aws_route53_record" "mongodb" {
  zone_id = var.zone_id
  name = "mongodb-${var.project}-${var.environment}-${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.mongodb.privateip]
  allow_overwrite = true
}

resource "aws_route53_record" "redis" {
  zone_id = var.zone_id
  name = "redis-${var.project}-${var.environment}-${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.redis.privateip]
  allow_overwrite = true
}

resource "aws_route53_record" "mysql" {
  zone_id = var.zone_id
  name = "mysql-${var.project}-${var.environment}-${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.mysql.privateip]
  allow_overwrite = true
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = var.zone_id
  name = "rabbitmq-${var.project}-${var.environment}-${var.domain_name}"
  type = "A"
  ttl = 1
  records = [aws_instance.rabbitmq.privateip]
  allow_overwrite = true
}