
output "sg" {

  value = aws_security_group.sg.name

}

variable "az" {
  type = string
  description = "specify the value of az"
  
}

variable "instanceType" {
 type = string
 description = "specify the instance type"

}