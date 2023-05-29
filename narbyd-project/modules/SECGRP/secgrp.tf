# creating dynamic ingress security groups
locals {
  security_groups = {
    ext-alb-sg = {
      name        = "ext-alb-sg"
      description = "external loadbalncer security group"

    }

    # security group for bastion
    bastion-sg = {
      name        = "bastion-sg"
      description = "bastion security group"
    }

    # security group for nginx
    nginx-sg = {
      name        = "nginx-sg"
      description = "nginx security group"
    }

    # security group for IALB
    int-alb-sg = {
      name        = "int-alb-sg"
      description = "internal loadbalancer security group"
    }


    # security group for webservers
    webserver-sg = {
      name        = "webserver-sg"
      description = "webservers security group"
    }


    # security group for data-layer
    datalayer-sg = {
      name        = "datalayer-sg"
      description = "datalayer security group"
    }
    
    compute-sg = {
      name        = "compute-sg"
      description = "compute security group"
    }
  }
}

