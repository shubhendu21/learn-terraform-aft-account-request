module "qa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shivam21021992+qa@gmail.com"
    AccountName               = "qa-main"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "shivam21021992+qa@gmail.com"
    SSOUserFirstName          = "qa"
    SSOUserLastName           = "main"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "none"
}