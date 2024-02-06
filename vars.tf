variable REGION {
  default = "us-east-2"
}

variable ZONE1 {
  default = "us-east-2a"
}

variable AMIS {
  type = map
  default = {
    us-east-2 = "ami-0a24e6e101933d294"
  }
}