terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 3.1"
    }

    # came from somewhere.  not sure if needed
    # docker = {
    #   source  = "kreuzwerker/docker"
    #   version = "~> 2.8"
    # }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "2.2.1"
    # }
  }

  required_version = ">= 1.0.0"
}