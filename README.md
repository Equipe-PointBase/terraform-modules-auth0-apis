<!-- BEGIN_TF_DOCS -->
<div align="center">

<p align="center"> <img src="./docs/terraform-logo-black.png" width="100" height="100"></p>

<h1 align="center">
    Terraform Auth0 - APIs aka Resource Servers
</h1>

<p align="center" style="font-size: 1.2rem;">
This terraform module is designed to create Auth0 APIs (Resource Servers)
</p>

</p>

</div>

<hr>

## Example

### Creating APIs on Auth0

Let's take the following usage code snipet as an example for the creation of an API

```hcl

module "apis" {
  source      = ""

  resource_servers = var.apis
}
```

Passing the below value to the module.

```hcl
apis ={
  myapi = {
    name       = "My API"
    identifier = "https://my-api.eu.auth0.com/api/v2/"

    skip_consent_for_verifiable_first_party_clients = false
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.6.1 |
| <a name="requirement_auth0"></a> [auth0](#requirement\_auth0) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_auth0"></a> [auth0](#provider\_auth0) | 1.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_resource_servers"></a> [resource\_servers](#input\_resource\_servers) | List of APIs | <pre>map(object({<br>    name       = string<br>    identifier = string<br><br>    signing_alg    = optional(string)<br>    signing_secret = optional(string)<br><br>    verification_location  = optional(string)<br>    token_dialect          = optional(string)<br>    token_lifetime         = optional(number)<br>    token_lifetime_for_web = optional(number)<br><br><br>    allow_offline_access                            = optional(bool)<br>    enforce_policies                                = optional(bool)<br>    skip_consent_for_verifiable_first_party_clients = optional(bool)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.

## Release notes

Release notes are available [here (link to update)](??/-/releases).

## Bug Reports & Feature Requests

Bug reports & feature requests should be reported in gitlab [here (link to update)](??/issues), before submitting an issue or a merge request, please check our [submission guidlines](CONTRIBUTING.md)

## Contributing

To build more comprehensive & better terraform modules by adding and laveraging features that meet  business cases, we need your contribution to maintain & move toward our Digital DevOps Terraform module portofolio.

**You want to participate ?** Checkout our guidlines for [contributing](CONTRIBUTING.md).
<!-- END_TF_DOCS -->