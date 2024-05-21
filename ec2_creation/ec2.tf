# Create EC2 Instance
resource "aws_instance" "netshi_instance" {
  ami           = data.aws_ami.latest_amazon_linux.id
  instance_type = "t3.nano"
  subnet_id     = var.subnetid
  key_name      = var.keyname
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name

  security_groups = [aws_security_group.netshi_sg.name]

  tags = {
    Name = "Netshi_Server"
  }
}