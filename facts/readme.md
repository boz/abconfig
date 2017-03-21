# Gathering facts for testing.


```sh
$ ansible -i hosts all -m setup > facts/system.json
```

## example systems:

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
