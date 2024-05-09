#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value
variable "image_id" {
    type = string #optional
    #default = "ami-07caf09b362be10b8" #optional
    description = "linux ami id" #optional
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "tags" {
    default = {
        project = "expense"
        environment = "dev"
        module = "db"
        name = "db"
    }
}

variable "sg_name" {
    default = "allow_ssh2"
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



