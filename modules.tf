module "network" {
  source = "./modules/network"
  
  cluster_name  = var.cluster_name
  aws_region    = var.aws_region
}
