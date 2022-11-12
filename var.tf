variable "AMI_ID" {
  type        = string
  description = "AMI_ID"
  default     = "ami-089a545a9ed9893b6"

}

variable "INSTANCE_TYPE" {
  type        = string
  description = "type of ec2 instance"
  default     = "t2.micro"
}