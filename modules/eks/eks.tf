# aws eks provisioning
resource "aws_eks_cluster" "dev_eks_cluster" {
  name = var.cluster_name
   version = var.eks_version
   role_arn = ""
  
   vpc_config {
     subnet_ids = []
     endpoint_private_access = false
     endpoint_public_access = true
   }
}