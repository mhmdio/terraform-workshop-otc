variable "domain_name" {
  type        = string
  description = "The Name of the Domain to scope to (Identity v3). If omitted, the following environment variables are checked (in this order): OS_USER_DOMAIN_NAME, OS_PROJECT_DOMAIN_NAME, OS_DOMAIN_NAME, DEFAULT_DOMAIN."
}

variable "tenant_name" {
  type        = string
  description = " The Name of the Tenant (Identity v2) or Project (Identity v3) to login with. If omitted, the OS_TENANT_NAME or OS_PROJECT_NAME environment variable are used."
}

variable "auth_url" {
  type        = string
  description = "(Optional; required if cloud is not specified) The Identity authentication URL. If omitted, the OS_AUTH_URL environment variable is used."
  default     = "https://iam.eu-de.otc.t-systems.com/v3"
}

variable "tags" {
  type = map(string)
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket name"
}

variable "bucket_versioning" {
  type        = bool
  description = ""
}
