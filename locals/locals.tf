locals {    
  ami_id = "ami-09c813fb71547fc4f"
  sg_id = "sg-0053ce598ea3ca93b" # replace with your SG ID
  instance_type = "t3.micro"
  tags = {
    Name = "locals"
  }
}