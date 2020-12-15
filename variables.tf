output "ipaddress" {

  value = aws_instance.demo01.public_ip

}

output "sg" {

  value = aws_security_group.sg.name

}