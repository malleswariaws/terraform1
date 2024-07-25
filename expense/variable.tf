variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}

variable "image_id" {
  type = string #optional
  default = "ami-041e2ea9402c46c32" #optional
  description = "RHEL-9 AMI ID" #optional
 }

 variable "instance_type"{
    default = "t2.micro"
    type = string
}

variable "common_tags" {
    default = {
        Project = "Expense"
        Envoronment = "Dev"
        Terraform = "true"
        
    }
}

variable "sg_name" {
    default = "allowing port 22"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list
    default = ["0.0.0.0/0"]
}