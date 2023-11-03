resource "auth0_resource_server" "resource_servers" {
  for_each = var.resource_servers

  name       = each.value.name
  identifier = each.value.identifier

  signing_alg    = each.value.signing_alg
  signing_secret = each.value.signing_secret

  token_dialect = each.value.token_dialect

  allow_offline_access                            = each.value.allow_offline_access
  skip_consent_for_verifiable_first_party_clients = each.value.skip_consent_for_verifiable_first_party_clients
}