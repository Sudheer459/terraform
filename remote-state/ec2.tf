resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-0066b5406df88fe75"]
    instance_type = "t3.micro"

    tags = {
        name = "db"
    }
  
}