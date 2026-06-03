variable "cluster_name" {
  type = string
  default = "dev_eks_cluster"
}

variable "eks_version" {
  default = 1.34
  description = "kubernetes version"
}
