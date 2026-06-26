module "vpc" {
  #source = "../terraform-aws-vpc-module"
  source = "git::https://github.com/ganesh-sai-pottabattini/terraform-aws-vpc-module.git?ref=master"
  project = var.project
  environment = var.environment
  is_peering_required = false
}