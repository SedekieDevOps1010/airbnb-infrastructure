variable "ami_id" {
  type        = string
  description = "AMI_ID"
  default     = "ami-0ae8d60635de460b2"

}

variable "instance_type" {
  type        = string
  description = "type of ec2 instance"
  default     = "t3.micro"
}
