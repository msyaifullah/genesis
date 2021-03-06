/**
*********************************
  Inputs
*********************************
**/
// GCP Variables
variable "gcp_project_name" {
  type = string
  description = "GCP project name for kubernetes"
}

variable "gcp_project_region" {
  type = string
  description = "GCP project region for kubernetes"
}

// Kubernetes cluster
variable "cluster_count" {
  type = string
  description = "Count of cluster instances to start."
}

variable "cluster_name" {
  type = string
  description = "Cluster name for the GCP Cluster."
}

// General Variables
variable "linux_admin_username" {
  type = string
  description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
}

variable "linux_admin_password" {
  type = string
  description = "The password for the Linux admin account."
}

// SQL Variable

variable "sql_name" {
  type = string
  description = "The name for sql database"
}

/**
*********************************
  Outputs
*********************************
**/
output "gcp_cluster_endpoint" {
  value = "${google_container_cluster.gcp_kubernetes.endpoint}"
}

output "gcp_ssh_command" {
  value = "ssh ${var.linux_admin_username}@${google_container_cluster.gcp_kubernetes.endpoint}"
}

output "gcp_cluster_name" {
  value = "${google_container_cluster.gcp_kubernetes.name}"
}
