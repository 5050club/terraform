resource "null_resource" "install_argocd" {
  provisioner "local-exec" {
    command = <<EOT
      export KUBECONFIG=${var.kubeconfig_path}
      kubectl create namespace argocd || true
      kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    EOT
  }

  triggers = {
    kubeconfig_path = var.kubeconfig_path
  }
}