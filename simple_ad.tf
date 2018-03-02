data "aws_vpc" "default" {
  default = true
}

data "aws_subnet_ids" "default" {
  vpc_id = "${data.aws_vpc.default.id}"
  tags {
      Name = "ad"
  }
}

resource "aws_directory_service_directory" "simple-ad" {
  type     = "SimpleAD"
  name     = "corp.jonr.com"
  password = "${var.ad_password}"
  size     = "Small"

  vpc_settings {
    vpc_id     = "${data.aws_vpc.default.id}"
    subnet_ids = ["${data.aws_subnet_ids.default.ids}"]
  }

}
