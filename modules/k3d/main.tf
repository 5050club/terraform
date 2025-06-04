resource "null_resource" "k3d_cluster" {
  provisioner "local-exec" {
    # k3d cluster create 5050club -p "5601:5601@loadbalancer" -p "9200:9200@loadbalancer" -p "443:443@loadbalancer"
    command = <<EOT
      k3d cluster create ${var.cluster_name} \
        --servers ${var.server_count} \
        --agents ${var.agent_count}
    EOT
  }

  triggers = {
    cluster_name = var.cluster_name
    servers      = var.server_count
    agents       = var.agent_count
  }
}

resource "null_resource" "kubeconfig" {
  depends_on = [null_resource.k3d_cluster]

  provisioner "local-exec" {
    command = "k3d kubeconfig get ${var.cluster_name} > ./kubeconfig-${var.cluster_name}"
  }

  triggers = {
    cluster_name = var.cluster_name
  }
}