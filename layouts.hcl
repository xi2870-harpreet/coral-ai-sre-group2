# Matches the original track.yml: default_layout: AssignmentRight,
# default_layout_sidebar_size: 35 (instructions on the right, at 35% width).
resource "layout" "main" {
  column {
    width = "65"

    tab "terminal" {
      target = resource.terminal.shell
      title  = "Terminal"
      active = true
    }

    tab "shop" {
      target = resource.service.shop
      title  = "Shop"
    }

    tab "prometheus" {
      target = resource.service.prometheus
      title  = "Prometheus"
    }

    tab "coral_ui" {
      target = resource.service.coral_ui
      title  = "Coral UI"
    }
  }

  column {
    width = "35"

    instructions {}
  }
}
