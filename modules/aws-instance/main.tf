# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
}

resource "aws_instance" "app" {
count = var.instance_count

  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"
}
