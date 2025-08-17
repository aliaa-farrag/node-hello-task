terraform {
  required_version = ">= 1.5.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Pull the image
resource "docker_image" "app" {
  name     = var.image
  platform = "linux/amd64"
}

# Run container
resource "docker_container" "app" {
  name  = var.container_name
  image = docker_image.app.name

  ports {
    internal = 3000
    external = var.host_port
  }

  env = [
    "SERVICE_NAME=${var.service_name}",
    "NEW_RELIC_LICENSE_KEY=${var.new_relic_license_key}",
    "NEW_RELIC_APP_NAME=${var.new_relic_app_name}",
    "NEW_RELIC_LOG=stdout",
    "NEW_RELIC_DISTRIBUTED_TRACING_ENABLED=true"
  ]

  restart = "unless-stopped"
}