resource "digitalocean_loadbalancer" "lb" {
    name   = "${var.lb_name}"
    region = "${var.lb_region}"


    forwarding_rule {
        entry_port     = "${var.lb_http_entry_port}"
        entry_protocol = "http"

        target_port     = "${var.lb_http_target_port}"
        target_protocol = "http"
    }

    forwarding_rule {
        entry_port     = "${var.lb_https_entry_port}"
        entry_protocol = "https"

        target_port     = "${var.lb_https_target_port}"
        target_protocol = "https"

        certificate_name = "${var.lb_cert_name}"
    }

    healthcheck {
        port     = "${var.lb_health_http_port}"
        protocol = "http"
    }

    vpc_uuid = "${var.lb_sdn_id}"
    
    droplet_ids = "${var.lb_vm_ids}"

}   