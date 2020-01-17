data "aws_availability_zones" "az" {}

data "terraform_remote_state" "vpc" {
  workspace = terraform.workspace
  backend   = "local"
  config = {
    path = "/tmp/.terrahub/local_backend/demo-terraform-automation-aws/vpc/terraform.tfstate"
  }
}
