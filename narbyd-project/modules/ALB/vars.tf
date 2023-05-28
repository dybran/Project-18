# The security froup for external loadbalancer
variable "public-sg" {
  description = "Security group for external load balancer"
}


# The public subnet froup for external loadbalancer
variable "pub-sub-1" {
  description = "Public subnets 1 for deploying external ALB"
}
variable "pub-sub-2" {
  description = "Public subnets 2 for deploying external ALB"
}


variable "vpc_id" {
  type        = string
  description = "The vpc ID"
}


variable "private-sg" {
  description = "Security group for Internal load balancer"
}

variable "priv-sub-1" {
  description = "Private subnets to deploy Internal ALB"
}
variable "priv-sub-2" {
  description = "Private subnets to deploy Internal ALB"
}

variable "ip_address_type" {
  type        = string
  description = "IP address for the ALB"

}

variable "load_balancer_type" {
  type        = string
  description = "the type of Load Balancer"
}

variable "tags" {
  description = "A mapping of tags to assign to all resources."
  type        = map(string)
  default     = {}
}

variable "extLB-name" {
  type        = string
  description = "external Load Balancer tag"
}

variable "intLB-name" {
  type        = string
  description = "internal Load Balancer tag"
}

