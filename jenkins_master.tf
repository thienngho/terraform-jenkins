data "template_file" "user_data" {
  template = "${file("templates/user_data.tpl")}"

  vars {
      jnlp_port = "${var.jnlp_port}"
      plugins = "${join(" ", var.plugins)}"
  }
}

resource "aws_instance" "jenkins" {
  ami = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  security_groups = ["${aws_security_group.sg_jenkins.name}"]
  key_name = "${aws_key_pair.thienho.id}"
  user_data = "${data.template_file.user_data.rendered}"

  tags {
    "Name" = "${var.jenkins_name}"
  }

}
