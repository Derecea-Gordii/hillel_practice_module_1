module "instance" {
  source = "./modules/instance_module"

  region = "us-west1"
  zone = "us-west1-a"
  compute_disk_size_bytes = "4060"
  startup_script_path = "./skript.sh"

  google_compute_network_name = module.vpc.google_compute_network_name
  google_compute_subnetwork_name = module.vpc.google_compute_subnetwork_name
  google_compute_subnetwork_id = module.vpc.google_compute_subnetwork_id
}

module "vpc" {
  source = "./modules/vpc_module"

  compute_network_name = "my-network"
  subnetwork_name = "my-subnetwork"
  region = "us-west1"
}



