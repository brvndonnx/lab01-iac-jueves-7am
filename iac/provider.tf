terraform {
  required_providers {
    docker = {
      source  = "abh80/docker"
      version = "1.0.1"
    }
  }
}

provider "docker" {
  # Configuration options
}