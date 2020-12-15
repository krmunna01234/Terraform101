resource "aws_security_group" "sg" {

  name = "MK-EC2-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "sg for allowing traffic"
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "sg for allowing traffic"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
}