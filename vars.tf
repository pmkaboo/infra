variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "aws region"
}

variable "ami" {
  type        = string
  default     = "ami-07eef52105e8a2059" # ubuntu 24.04
  description = "ami used for the ec2 instance"
}

variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "ec2 instance type"
}

variable "ec2_instance_name" {
  type        = string
  description = "name of the ec2 instance"
}

variable "ec2_keypair_name" {
  type        = string
  description = "name of the ec2 keypair"
}

variable "ec2_keypair_pub_key" {
  type        = string
  description = "public key of the ec2 keypair"
}

variable "db_type" {
  type        = string
  default     = "db.t3.micro"
  description = "db type"
}

variable "db_name" {
  type        = string
  description = "name of the db"
}

variable "db_username" {
  type        = string
  description = "name of the db user"
}

variable "db_password" {
  type        = string
  description = "password of the db user"
}
