# abconfig: workstation setup & config.

# Setup

```sh
$ export ANSIBLE_VAULT_PASSWORD_FILE="./vaultpw"
```

# Running:

Install and configure for a dev workstation:

```sh
$ ansible-playbook -i hosts workstation.yml
```
