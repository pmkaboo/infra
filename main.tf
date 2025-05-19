resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.ec2_instance_type
  key_name      = aws_key_pair.this.key_name

  vpc_security_group_ids = [
    aws_security_group.instance.id,
    aws_security_group.postgres.id
  ]

  tags = {
    Name = var.ec2_instance_name
  }
}

resource "aws_eip" "this" {}

resource "aws_eip_association" "this" {
  instance_id   = aws_instance.this.id
  allocation_id = aws_eip.this.id
}

resource "aws_key_pair" "this" {
  key_name   = var.ec2_keypair_name
  public_key = var.ec2_keypair_pub_key
}
