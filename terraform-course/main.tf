terraform {
    required_providers {
        aws = {
        source  = "hashicorp/random"
        version = "3.4.3"
        }
    }
}

provider "random" {
}  

variable "pet_type" {
    type = string
    description = "Qual o tipo de animal de estimação você tem?"
    default = "Cachorro"  
}

resource "random_pet" "pet_name" {
    keepers = {
      pet_type = var.pet_type
    } 
}

output "pet_name" {
    value = random_pet.pet_name
  
}

