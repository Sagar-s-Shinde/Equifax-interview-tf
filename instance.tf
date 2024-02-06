resource "aws_instance" "eq-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "Test-Key"
  vpc_security_group_ids = ["sg-0780815f55104be8a"]
}

output "PublicIP" {
  value = aws_instance.eq-inst.public_ip
}