/*
* main.tf
*/
provider "google" {}

module "kubernetes-engine" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "6.1.1"
  # The _name_ of the secondary subnet ip range to use for pods
  ip_range_pods = ""
  # The name of the cluster (required)
  name = ""
  # The _name_ of the secondary subnet range to use for services
  ip_range_services = ""
  # The VPC network to host the cluster in (required)
  network = ""
  # The region to host the cluster in (optional if zonal cluster / required if regional)
  region = ""
  # The project ID to host the cluster in (required)
  project_id = ""
  # The subnetwork to host the cluster in (required)
  subnetwork = ""
}

module "managed-instance-group" {
  source  = "GoogleCloudPlatform/managed-instance-group/google"
  version = "1.1.15"
}
