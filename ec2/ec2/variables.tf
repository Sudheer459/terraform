variable "image_id" {
    type = string
    default = "ami-07caf09b362be10b8" #optional
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