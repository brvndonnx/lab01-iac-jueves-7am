resource "docker_container" "api"{
    name = "api-${terraform.workspace}"
    image = "lab/api"

    ports {
        internal = "3000"
        external = var.api_port[terraform_workspace]
    }
}

resource "docker_container" "web" {
    name = "web-${terraform_workspace}"
    image = "lab/web"

    ports {
        internal = "80"
        external = var.web_port[terraform_workspace]
    }
}