variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Week2Instance"
}
variable "ami" {
  description = "The EC2 Instance AMI ID"
  type        = string
  default     = "ami-08e2d37b6a0129927"
}
variable "instance_type" {
  description = "The EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}
variable "region" {
  description = "The EC2 Instance Region"
  type        = string
  default     = "us-west-2"
}
variable "bucket_name" {
  description = "The S3 Bucket name"
  type        = string
  default     = "week2avlasov"
}
variable "key_name" {
  description = "The EC2 Key Pair to allow SSH access to the instance"
  type        = string
  default     = "AWS"
}
variable "iam_role_name" {
  description = "IAM Role Name"
  type        = string
  default     = "S3Role"
}