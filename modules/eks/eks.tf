# aws eks provisioning
resource "aws_eks_cluster" "dev_eks_cluster" {
  name = "dev_eks_cluster"
   version = "v1.34"
   role_arn = ""

   vpc_config {
     subnet_ids = []
     endpoint_private_access = false
     endpoint_public_access = true
   }
}