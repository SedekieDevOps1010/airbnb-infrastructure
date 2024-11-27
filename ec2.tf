
resource "aws_instance" "web-Server" {
  count = 5
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  monitoring    = true
  ebs_optimized = true
  root_block_device {
    encrypted = true
  }
  tags = {
    Name = "airbnb-webserver"
  }
}