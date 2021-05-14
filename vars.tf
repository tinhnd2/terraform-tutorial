variable "AWS_REGION" {
  type = string
}

variable "AWS_ACCESS_KEY" {
  type = string
}

variable "AWS_SECRET_KEY" {
  type = string
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-southeast-1 = "ami-02f26adf094f51167"
  }
}