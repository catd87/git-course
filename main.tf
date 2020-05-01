provider "google" {
    credentials = "${file("seeed-labs-bb75e72c1cb7.json")}"
    project =  "seeed-labs"
    region = "us-central1"
    zone = "us-central1-c"


}
resource "google_compute_instance" "VM-instance" {
    name        = var.instance_name
    machine_type = var.machine_type
    zone        = var.zone

    tags = ["db"]

    boot_disk {
        initialize_params {
            image = var.CPU
        }

    }


    network_interface {
        network = "${google_compute_network.vpc_network.self_link}"
        access_config {

        }
    }


    
}

resource "google_compute_network" "vpc_network" {
    name                    = var.network
    auto_create_subnetworks = "true"
}