variable "instance_names" {
    type    = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project = "Expense"
       Terraform = "true"
    }
}
variable "domain_name" {
    default = "malleswariaws.online"
}

variable "zone_id" {
    default = "Z03295433D5PD4U5F9B46"
}