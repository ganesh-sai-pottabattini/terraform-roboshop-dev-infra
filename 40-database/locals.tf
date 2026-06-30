locals {
  ami_id = data.aws_ami.joindevops.id
  database_subnet_id = split(",", data.aws_ssm_parameter.database_subnet_ids.value)[0] # roboshop-dev-public-1a
  
  mongodb_sg_id = data.aws_ssm_parameter.mongodb_sg_id
  redis_sg_id = data.aws_ssm_parameter.redis_sg_id
  mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id
  rabbitmq_sg_id = data.aws_ssm_parameter.rabbitmq_sg_id

  common_name = "${var.project}-${var.environment}"
  common_tags = {
    Project = var.project
    Environment = var.environment
    Terraform =  "true"
  }
}