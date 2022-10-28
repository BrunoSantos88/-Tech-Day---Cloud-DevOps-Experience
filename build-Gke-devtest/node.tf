resource "google_container_node_pool" "primary_preemptible_nodes-dev-test" {
  name       = "my-node-pool-dev-test"
  location   = "us-central1"
  cluster    = google_container_cluster.cluster-k8-dev-test.id
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

  }

management {
    auto_repair  = true
    auto_upgrade = true
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 1
  }


}

resource "google_container_node_pool" "primary_preemptible_nodes-staging-test" {
  name       = "my-node-pool-staging"
  location   = "us-central1"
  cluster    = google_container_cluster.cluster-k8-staging-test.id
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

  }

management {
    auto_repair  = true
    auto_upgrade = true
  }

  autoscaling {
    min_node_count = 1
    max_node_count = 1
  }


}