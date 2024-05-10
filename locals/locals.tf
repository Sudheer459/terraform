locals {
    ami_id = "ami-090252cbe067a9e58"
    vpc_sg_id = "sg-0066b5406df88fe75" # replace with your sg_id
    instance_type = "t3.small"

    tags = {
        name ="local"
    }
}