variable "resource_servers" {
  description = "List of APIs"

  type = map(object({
    name       = string
    identifier = string

    signing_alg    = optional(string)
    signing_secret = optional(string)

    verification_location  = optional(string)
    token_dialect          = optional(string)
    token_lifetime         = optional(number)
    token_lifetime_for_web = optional(number)


    allow_offline_access                            = optional(bool)
    enforce_policies                                = optional(bool)
    skip_consent_for_verifiable_first_party_clients = optional(bool)
  }))
}