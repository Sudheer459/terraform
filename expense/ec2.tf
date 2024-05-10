# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {
    count = length(var.instance_name)
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh4.id]
    instance_type = var.instance_name[count.index] == "db" ? "t3.small" : "t3.micro"
    tags = merge(
        var.common_tags,
        {
            name = var.instance_name[count.index]
            module = var.instance_name[count.index]
        }
    )
}

resource "aws_security_group" "allow_ssh4" {
    name = var.sg_name
    description = var.sg_description

    # this is block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.allowed_cidr
 }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = var.allowed_cidr
 }

    tags = {
        name = "allow_ssh4"
        createdby = "sudheer"
    }
}

# resource <resource-type> <resource-name>



