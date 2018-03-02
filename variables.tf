variable "access_key" {}

variable "secret_key" {}

variable "region" {}

variable "availability_zone" {
  description = "The availability zone"
  default = "ap-southeast-1a"
}

variable "jenkins_name" {
  description = "The name of the Jenkins server."
  default = "jenkins"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-68097514"
  description = "Amazon AMI"
}

variable "jnlp_port" {
  description = "The port to use for TCP traffic between Jenkins intances"
  default     = 49187
}

variable "plugins" {
  type        = "list"
  description = "A list of Jenkins plugins to install, use short names."
  default     = ["git", "xunit"]
}

variable "ad_password" {}
