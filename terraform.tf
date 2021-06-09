resource "okta_user" "XelloDemo" {
  first_name = "Xello"
  last_name  = "Okta Terraform"
  login      = "Xello.OktaTerraform@xellolabs.com"
  email      = "Xello.OktaTerraform@xellolabs.com"
  status     = "STAGED"
}
