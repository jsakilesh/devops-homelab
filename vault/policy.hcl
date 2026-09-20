# Vault policy for Kubernetes workloads
path "secret/data/homelab/*" {
  capabilities = ["read", "list"]
}

path "database/creds/readonly" {
  capabilities = ["read"]
}

path "pki/issue/homelab-cert" {
  capabilities = ["create", "update"]
}