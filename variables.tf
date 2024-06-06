variable "region" {
  description = "AWS region name"
  type        = string
  default     = "<region-id>"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "Default-eks-cluster-name"
}
