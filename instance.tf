resource "aws_key_pair" "mykey" {
  key_name   = "mykey"
  public_key = "$file(/home/dylan/.ssh/id_rsa.pub)"
}

resource "aws_instance" "example" {
  ami = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name = ""
}