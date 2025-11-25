terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

# Random pet name for a web server
resource "random_pet" "web_server" {
  length = 3
  separator = "-"
}

# Random pet name for a database
resource "random_pet" "database" {
  length = 3
  separator = "_"
}
resource "random_pet" "foo" {
  length = 3
  separator = "_"
}

