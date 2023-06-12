provider "aws" {
  region = "us-west-2"
  access_key = "AKIATGTXGAR5HQ2HJOFR"
  secret_key = "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"

}

resource "aws_vpc" "myvpc" {
  cidr_block = "10.10.10.0/24"
  tags = {
    Name = "myvpc"
  }
}
resource "aws_subnet" "mysubnet1" {
  vpc_id = aws_vpc.myvpc.id    or give vpcid 
  cidr_block = "10.10.10.0/25"
  tags = {
    Name = "mysubnet1"
  }
}
resource "aws_instance" "chaitanya" {
  ami = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  count = 2
  tags = {
    Name = "chaitanya"
  }
}
