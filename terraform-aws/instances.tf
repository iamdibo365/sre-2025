# EC2 Instance 1
resource "aws_instance" "web_1" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_1.id

  vpc_security_group_ids = [aws_security_group.ec2.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from EC2 Instance 1</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "WebServer-1"
  }
}

# EC2 Instance 2
resource "aws_instance" "web_2" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_2.id

  vpc_security_group_ids = [aws_security_group.ec2.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from EC2 Instance 2</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "WebServer-2"
  }
}