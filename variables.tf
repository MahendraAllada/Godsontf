###### Variables ##########

variable "active_key" {
    description = "AccessKey"
    default     = "user"
}

variable "security_key" {
    description = "Secretkey"
    default     = "password"
}

variable "region" {
    description = "EC2 Region for the VPC"
    default     = "ap-northeast-1"
}

variable "vpc_cidr" {
    description = "VPC cidr block"
    default     = "10.3.0.0/16"
}

variable "public_cidr" {
    description = "public subnet cidr block"
    default     = "10.3.1.0/24"
}

variable "subnet_zone" {
    description = "public availability zone"
    default     = "ap-northeast-1a"
}

variable "image" {
    description = "instance images"
    default     = "ami-0f310fced6141e627"
}

variable "instance_type" {
    description = "instance type"
    default     = "t2.micro"
}

variable "key" {
    description = "instance key name"
    default     = "mahendratokyo"
}
