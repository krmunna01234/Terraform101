resource "aws_instance" "demo0101" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = var.instanceType

  tags = {
    Name = "MK-ec2-Demo0101"
  }

  vpc_security_group_ids = [aws_security_group.sg.id]

  key_name = "Mk_Keypair"

}



