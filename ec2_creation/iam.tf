# Create IAM role
resource "aws_iam_role" "ec2_role" {
  name               = "Netshi_EC2_Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Effect    = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

# Create IAM instance profile
resource "aws_iam_instance_profile" "ec2_instance_profile" {
  name = "Netshi_EC2_Instance_Profile"
  role = aws_iam_role.ec2_role.name
}

#can add as many roles.