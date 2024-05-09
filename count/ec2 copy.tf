# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names)
    ami = "ami-07caf09b362be10b8"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh3.id]
    key_name = "keypairnew"
    tags = {
        name = var.instance_names[count.index]
    }
}

 resource "aws_security_group" "allow_ssh3" {
    name = "allow_ssh3"
    description = "allowing SSH access"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
  }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = {
        Name = "allow_ssh3"
        createdby = "sudheer"
    }
}