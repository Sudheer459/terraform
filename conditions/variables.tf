variable "image_id" {
    type = string #optional
    default = "ami-07caf09b362be10b8" #optional
    description = "linux ami id" #optional
}

variable "instance_type" {
    default = "t2.micro"
    type = string
}

variable "instance_name" {
    default = "backend"
}