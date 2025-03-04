resource "aws_instance" "dev-ec2" {
  ami           = "ami-0fc82f4dabc05670b"
  instance_type = "t2.micro"
}