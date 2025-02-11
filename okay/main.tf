provider "google" {
    project = "mythic-inn-420620"
    zone="us-central1-a"
  
  
}

resource "google_compute_instance" "n1" {
    name="n1"
    machine_type = "e2-micro"
    boot_disk {
      initialize_params {
        image = "centos-stream-9"
      }
    }
    network_interface {
      network = "default"
      access_config {
        
      }
    }
  
}
