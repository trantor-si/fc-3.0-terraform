# Resource = bloco
# Local = provider
# File = tipo do provider
resource "local_file" "exemplo" {
  filename = "exemplo.txt"
  content = var.conteudo
}

data "local_file" "output" {
  filename = "exemplo.txt"
}

output "datasource-result" {
  value = data.local_file.output.content
}  

variable "conteudo" {
  type = string
}

output "id-do-arquivo" {
  value = resource.local_file.exemplo.id
}
  
output "conteúdo" {
  value = var.conteudo
}