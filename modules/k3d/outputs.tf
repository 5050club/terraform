output "kubeconfig_path" {
  value       = "${path.module}/kubeconfig-${var.cluster_name}"
  description = "Path to the generated kubeconfig file."
}