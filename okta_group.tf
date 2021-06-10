variable "org_name" {}
variable "api_token" {}
variable "base_url" {}

provider "okta" {
  org_name = var.org_name
  base_url = var.base_url
  api_token = var.api_token
} 

resource "okta_group" "test" {
  name        = "testAcc"
  description = "testing, testing"
  users       = [okta_user.test.id]
}

resource "okta_user" "test" {
  first_name = "TestAcc"
  last_name  = "Jones"
  login      = "john_replace_with_uuid@ledzeppelin.com"
  email      = "john_replace_with_uuid@ledzeppelin.com"
}
