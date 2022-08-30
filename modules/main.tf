# main.tf

resource "random_id" "suffix" {
  byte_length = 1
}

output "suffix" {
  value = random_id.suffix.dec
}
