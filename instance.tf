resource "aws_instance" "eq-inst" {
  count         = 2
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "Test-Key"
  vpc_security_group_ids = ["sg-0780815f55104be8a"]
  tags = {
    Name = "eq-inst-${count.index + 1}"
  }
}

output "PublicIP" {
  value = [for instance in aws_instance.eq-inst : instance.public_ip]

}