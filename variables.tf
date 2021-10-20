variable "lb_name"{
    decription = "Name of the load balancer"
    type = string
}

variable "lb_region"{
    decription = "Region for the load balancer"
    type = string
}


variable "lb_region"{
    decription = "Region for the load balancer"
    type = string
}

variable "lb_http_entry_port"{
    decription = "HTTP Entry Port for the load balancer"
    type = number
}

variable "lb_http_target_port"{
    decription = "HTTP Target Port for the load balancer"
    type = number
}

variable "lb_https_entry_port"{
    decription = "HTTPS Entry Port for the load balancer"
    type = number
}

variable "lb_https_target_port"{
    decription = "HTTPS Target Port for the load balancer"
    type = number
}

variable "lb_cert_name"{
    decription = "Load balancer certificate name"
    type = string
}

variable "lb_health_http_port"{
    decription = "Load balancer http health check port"
    type = number
}

variable "lb_sdn_id"{
    decription = "Load balancer SDN ID"
    type = string
}

variable "lb_vm_ids"{
    decription = "Load balancer VM Id's"
    type = list
}