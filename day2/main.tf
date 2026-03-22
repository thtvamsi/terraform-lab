variable "filename" {}
variable "message" {}

resource "local_file" "env_file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}

output "file_path" {
  value = local_file.env_file.filename
}