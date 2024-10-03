# resources <resource-type> <resource-name> 
resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0053ce598ea3ca93b"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}