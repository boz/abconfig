## Gathering facts for testing.

```sh
$ ansible -i hosts all -m setup > facts/system.json
```

### mbp-arch

Arch on 2013 Macbook Pro (11,3)

```json
{
  "ansible_system": "Linux",
  "ansible_distribution": "Archlinux",
  "ansible_os_family": "Archlinux",
  "ansible_pkg_mgr": "pacman",
  "ansible_service_mgr": "systemd",
}
```

### mbp-osx

OSX on 2013 Macbook Pro (11,3)

```json
{
  "ansible_system": "Darwin",
  "ansible_distribution": "MacOSX",
  "ansible_os_family": "Darwin",
  "ansible_pkg_mgr": "homebrew",
  "ansible_service_mgr": "/sbin/launchd"
}
```

### tower-ubuntu

Ubuntu on i7 tower.

```json
{
  "ansible_system": "Linux",
  "ansible_distribution": "Ubuntu",
  "ansible_os_family": "Debian",
  "ansible_pkg_mgr": "apt",
  "ansible_service_mgr": "systemd"
}
```

### macpro-ubuntu

Ubuntu on Mac Pro (5,1) tower.

```json
{
  "ansible_system": "Linux", 
  "ansible_distribution": "Ubuntu", 
  "ansible_os_family": "Debian", 
  "ansible_pkg_mgr": "apt", 
  "ansible_service_mgr": "systemd"
}
```

## install/configure the system.

```sh
$ ansible-playbook -i hosts workstation.yml
```

# Secrets

```sh
$ export ANSIBLE_VAULT_PASSWORD_FILE="path-to-your-password-file"
$ git clone https://github.com/path-to-your-secrets group_vars
```

The `group_vars` directory must contain:

* `group_vars/all/awscli`:

```yaml
---
aws_access_key_id:     "your-access-key-id"
aws_secret_access_key: "your-secret-access-key"
```

* `group_vars/all/ots`:

```yaml
---
ots_registry_token: "your-registry-token"
```
