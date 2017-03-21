# abconfig: personal system configuration management

# Setup

## Secrets

The following "secret" variables must be defined:

```yaml
---
aws_access_key_id:     "your-access-key-id"
aws_secret_access_key: "your-secret-access-key"
ots_registry_token:    "your-registry-token"
```

One way to do this is to create a `group_vars/all/secrets` file:

```sh
$ git clone git@github.com:boz/abconfig-secrets.git ./group_vars
$ echo "your-password" > vault.txt
$ export ANSIBLE_VAULT_PASSWORD_FILE="./vault.txt"
```

# Running:

Install and configure for a dev workstation:

```sh
$ ansible-playbook -i hosts workstation.yml
```
