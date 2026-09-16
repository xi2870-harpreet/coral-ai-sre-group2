# Terminal — command-line access to the k8s VM.
resource "terminal" "shell" {
  target = resource.vm.k8s
  shell  = "/bin/bash"
}

# The Reef Shop storefront (frontend service, NodePort 30080).
resource "service" "shop" {
  target = resource.vm.k8s
  port   = 30080
  scheme = "http"
}

# Prometheus UI (NodePort 30990).
resource "service" "prometheus" {
  target = resource.vm.k8s
  port   = 30990
  scheme = "http"
}

# Coral local UI, forwarded to 11457.
resource "service" "coral_ui" {
  target = resource.vm.k8s
  port   = 11457
  scheme = "http"
}
