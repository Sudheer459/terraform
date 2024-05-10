resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0066b5406df88fe75"] # replace with your SG ID
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            name = each.key
            module = each.key
        }
    )
}
