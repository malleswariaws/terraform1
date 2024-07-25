# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names)
    ami = "ami-041e2ea9402c46c32"
    instance_type = "t2.small"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags =  {
        Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh" 
    description = "allowing SSH access"

 
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  } 

  egress {
    from_port        = 0 # 0 to 0 means, opening all protocal
    to_port          = 0 
    protocol         = "-1" # -1 all protocalls
    cidr_blocks      =  ["0.0.0.0/0"]
  }

    tags = {
    Name = "allow-ssh"
    createdBy = "malli"
  }
}