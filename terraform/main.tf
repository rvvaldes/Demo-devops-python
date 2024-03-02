resource "digitalocean_kubernetes_cluster" "python-app" {
  name    = "python-app"
  region  = "nyc3"
  version = "1.29.1-do.0"

  node_pool {
    name       = "python-app-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 2
    labels = {
        service  = "python-app"
        environment = "test"
  }

  }
}