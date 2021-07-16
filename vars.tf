variable "REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1  = "ami-0dc2d3e4c0f9ebd18"
    us-east-2  = "ami-0233c2d874b811deb"
    ap-south-1 = "ami-00bf4ae5a7909786c"
  }
}

variable "user" {
  default = "ec2-user"

}

variable "Pri-key" {
  default = "dovekey"
}

variable "Public_key_path" {
  default = "dovekey.pub"
}

variable "myip" {
  default = "202.186.97.178/32"
}

variable "rmquser" {
  default = "rabbit"
}

variable "rmqpass" {
  default = "Big33rn!1234567"
}


variable "dbname" {
  default = "accounts"
}

variable "dbuser" {
  default = "admin"
}

variable "dbpass" {
  default = "admin123"
}

variable "instance_count" {
  default = "1"
}


variable "vpc_name" {
  default = "vprofile-vpc"
}


variable "zone1" {
  default = "us-east-1a"
}

variable "zone2" {
  default = "us-east-1b"
}

variable "zone3" {
  default = "us-east-1c"
}

variable "vpc-cidr" {

  default = "172.0.0.0/16"

}


variable "publicsubnet1" {

  default = "172.0.1.0/24"
}

variable "publicsubnet2" {

  default = "172.0.2.0/24"
}

variable "publicsubnet3" {

  default = "172.0.3.0/24"
}

variable "privatesubnet1" {

  default = "172.0.11.0/24"
}

variable "privatesubnet2" {

  default = "172.0.12.0/24"
}

variable "privatesubnet3" {

  default = "172.0.13.0/24"
}