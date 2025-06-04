module "k3d" {
  source = "../../modules/k3d"
  cluster_name = var.cluster_name
  server_count = var.server_count
  agent_count  = var.agent_count
}

module "argocd" {
  source          = "../../modules/argocd"
  kubeconfig_path = module.k3d.kubeconfig_path
}
