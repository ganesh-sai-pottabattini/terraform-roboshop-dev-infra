module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/ganesh-sai-pottabattini/terraform-aws-security-group.git?ref=master"
    project = var.project
    environment = var.environment
    sg_name = replace(var.sg_names[count.index], "_","-")
    vpc_id = local.vpc_id
}

