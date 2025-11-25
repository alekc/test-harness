terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

# Random pet name for a web server
# resource "random_pet" "web_server" {
#   length = 3
#   separator = "-"
# }

# Random pet name for a database
resource "random_pet" "database" {
  length = 3
  separator = "_"
}

# Output the generated pet names
output "web_server_name" {
  value = random_pet.web_server.id
  description = "Generated pet name for the web server"
}

output "database_name" {
  value = random_pet.database.id
  description = "Generated pet name for the database"
}
