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