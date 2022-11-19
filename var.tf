variable "ami_id" {
  type        = string
  description = "AMI_ID"
  default     = "ami-089a545a9ed9893b6"

}

variable "instance_type" {
  type        = string
  description = "type of ec2 instance"
  default     = "t3.micro"
}
