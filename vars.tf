variable "AWS_REGION" {
  default = "us-east-2"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-024e6efaf93d85776"
  }
}

variable "PRIV_KEY_PATH" {
  default = "prodkey"
}

variable "PUB_KEY_PATH" {
  default = "prodkey.pub"
}

variable "USERNAME" {
  default = "ubuntu"
}

variable "MYIP" {
  default = "76.94.42.142/32"
}

variable "rmquser" {
  default = "Daniel"
}

variable "rmqpass" {
  default   = "Gr33n@pple123456"
  type      = string
  sensitive = true
}

variable "dbuser" {
  default = "admin"
}

variable "dbpass" {
  default   = "admin2023"
  type      = string
  sensitive = true
}

variable "db_name" {
  default = "accounts"
}

variable "instance_count" {
  default = "1"
}

variable "VPC_NAME" {
  default = "cloudstate-vpc"
}

variable "Zone1" {
  default = "us-east-2a"
}

variable "Zone2" {
  default = "us-east-2b"
}

variable "Zone3" {
  default = "us-east-2c"
}

variable "VpcCIDR" {
  default = "172.21.0.0/16"
}


variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "172.21.6.0/24"
}