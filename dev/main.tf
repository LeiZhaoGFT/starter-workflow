# main.tf

module "random_id" {
  source    = "../modules"
}

output "random_id" {
  value = module.random_id.suffix  
}