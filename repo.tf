resource "github_repository" "example" {
  count       = length(var.repositories)
  name        = var.repositories[count.index]
  description = "My Repo codebase ${var.repositories[count.index]}"
  auto_init   = true
  visibility  = "public"



}
resource "github_repository_file" "foo" {
  count               = length(var.repositories)
  repository          = var.repositories[count.index]
  file                = "README.md"
  content             = "Put the content here"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
  depends_on          = [github_repository.example]
}