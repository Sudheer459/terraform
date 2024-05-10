locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-0066b5406df88fe75" # replace with your sg_id
    #instance_type = "t3.micro"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    tags = {
        name = "locals"
    }
}