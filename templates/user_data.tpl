#!/bin/bash
set -e -x
# This script is meant to be run in the User Data of each EC2 Instance while it's booting.

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins
sudo yum install -y java-1.8.0-openjdk.x86_64
echo 2 | sudo alternatives --config java
sudo service jenkins start
sudo chkconfig --add jenkins
