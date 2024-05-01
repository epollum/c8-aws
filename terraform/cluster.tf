module "eks_cluster" {
  source = "github.com/camunda/camunda-tf-eks-module/modules/eks-cluster"

  region  = "eu-central-1" # change to your AWS region
  name    = "emma-test" # change to name of your choosing

  # Set CIDR ranges or use the defaults
  cluster_service_ipv4_cidr = "10.190.0.0/16"
  cluster_node_ipv4_cidr    = "10.192.0.0/16"
}