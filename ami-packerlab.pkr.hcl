packer {
  required_plugins {
    amazon = {
      version = ">= 1.2.8"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "update-ami" {
  ami_name      = "packer-labs-21012024"
  ami_description = "update-21012024"
  instance_type = "t2.micro"
  region        = "us-east-1"

  tags = {
    update_date = "21012024"
    Name = "packer-labs-21012024"
    }
  
  source_ami_filter {
    filters = {
      name                = "al2023-ami-2023.3.20240117.0-kernel-6.1-x86_64"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["137112412989"]
  }
  
  ssh_username = "ec2-user"
}

build {
  name = "update-ami"
  sources = [
    "source.amazon-ebs.update-ami"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=Update-AMI",
    ]
    inline = [
      "echo Update Server",
      "sudo yum list updates > $(hostname)_$(date +%Y-%m-%d_%H:%M:%S).txt ",
      "sudo yum update -y",
      "echo \"FOO is $FOO\" > log.txt",
    ]
  }
}
