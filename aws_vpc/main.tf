resource "aws_vpc" "feb_tf" {
  cidr_block = var.vpc_cidr
  tags       = var.aws_vpc_tags
}

resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.feb_tf.id
  cidr_block = var.pub_sub_1_cidr
  #availability_zone = "us-east-2b"
  tags = var.pub_sub_1_tags

}
resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.feb_tf.id
  cidr_block = var.pub_sub_2_cidr
  # availability_zone = "us-east-2c"
  tags = var.pub_sub_2_tags
  map_public_ip_on_launch = true

}
resource "aws_security_group" "sg-1" {
  name = "ec2-sg"
}