#!/bin/bash
component=$1
environment=$2
app_version=$3
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost -U https://github.com/SandeepNainala/expense-ansible-roles-tf.git main.yml -e component=$component -e environment=$environment -e appVersion=$appVersion