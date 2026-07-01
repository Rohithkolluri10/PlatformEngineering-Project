variable "region" {
    type = string
    description = "AWS ec2 instance region"
    default = "us-east-1"
    sensitive = false
  
}

variable "instance_type" {
    type = string
    description = "EC2 instance type"
    default = "t2.micro"
    sensitive = false
  
}