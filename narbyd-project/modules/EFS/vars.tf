variable "efs-subnet-2" {
  description = "subnet 2 for the mount target"
}

variable "efs-subnet-1" {
  description = "subnet 1 for the mount target"
}

variable "efs-sg" {
  type        = list
  description = "security group for the file system"

}

variable "account_no" {
  type        = string
  description = "account number for the AWS"
} 


variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}
