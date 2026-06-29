resource "docker_image" "my_docker_image" {
    name = "my-local-app:latest"
    build {
        context = "."
    }
}

resource "docker_container" "my_docker_container" {
    name = "running_docker_container"
    image = docker_image.my_docker_image.image_id

    ports {
        internal = 80
        external = 8080
    }
}