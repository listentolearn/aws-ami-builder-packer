variable "region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_name" {
  type    = string
  default = "linux-web-app"
}

variable "base_ami" {
  type    = string
  default = "ami-087c17d1fe0178315"
}

variable "subnet_id" {
  type    = string
  default = "subnet-ccfed3ed"
}

variable "security_group_id" {
  type    = string
  default = "sg-914a0f8f"
}
