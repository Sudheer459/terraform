variable "instance_name" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "image_id" {
    type = string #optional
    default = "ami-090252cbe067a9e58" #optional
    description = "RHEL-9 AMI ID" #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        project = "expense"
        environment = "dev"
        terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh4"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default =22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list    
    default = ["0.0.0.0/0"]
}

#r53 variable
variable "zone_id" {
    default = "Z00738251BMOJYUBBF1UM"
}

variable "domain_name" {
    default = "daws78s.online"
}