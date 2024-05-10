#count and count.index will not work in locals
#locals {
#    record_name = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain.name}" [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
#    record_value = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
#}