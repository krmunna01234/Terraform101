resource "aws_instance" "demo01" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"

  tags = {
    Name = "MK-ec2-Demo01"
  }

  vpc_security_group_ids = [aws_security_group.sg.id]

  key_name = "Mk_Keypair"

}



