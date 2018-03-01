variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

resource "aws_key_pair" "thienho" {
  key_name = "thienho"
  public_key = "${file(var.public_key_path)}"
}
