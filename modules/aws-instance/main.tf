# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

data "aws_ami" "ami-ekslinux" {
  most_recent = true
  owners      = ["amazon"]
}

resource "aws_instance" "app" {
  count = var.instance_count
    ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}
