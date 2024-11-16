variable "AMI_ID" {
  type        = string
  description = "AMI_ID"
  default     = "ami-012967cc5a8c9f891"

}

variable "INSTANCE_TYPE" {
  type        = string
  description = "type of ec2 instance"
  default     = "t3.micro"
}
