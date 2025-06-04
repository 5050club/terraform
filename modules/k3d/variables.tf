variable "cluster_name" {
  description = "Name of the k3d cluster"
  type        = string
  default     = "k3d-terraform-module"
}

variable "server_count" {
  description = "Number of server nodes"
  type        = number
  default     = 1
}

variable "agent_count" {
  description = "Number of agent nodes"
  type        = number
  default     = 2
}