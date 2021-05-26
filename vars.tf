variable "AWS_REGION" {
  type = string
}

variable "AWS_SUBNET_ZONE" {
  type = string
}

variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "AMISS" {
  type = map(string)
  default = {
    ap-southeast-1 = "ami-0d058fe428540cd89"
    ap-northeast-1 = "ami-0df99b3a8349462c6"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "./credencials/mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "./credencials/mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

variable "VPC_ID" {
  type = string
}