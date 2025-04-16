variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0fc5d935ebf8bc3bc" # Ubuntu 22.04 LTS in us-east-1
}

variable "key_name" {
  description = "EC2 Key Pair name"
}

variable "ecr_image_url" {
  description = "ECR image URL"
}
