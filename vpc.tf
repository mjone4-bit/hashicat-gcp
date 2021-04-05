module "network" {
  source  = "app.terraform.io/mjone4-training/network/google"
  version = "2.5.0"
    project_id   = var.project
    network_name = "mjone4-vpc"
  subnets = [
  {
    subnet_name   = "mjone4-subnet"
    subnet_ip     = "10.100.10.0/24"
    subnet_region = var.region
  }
]
}