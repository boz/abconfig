
```sh
$ ansible-playbook -i hosts workstation.yml
```

```sh
$ ansible -i hosts all -m setup > facts/satellite-arch.json
```

```
        "ansible_hostname": "satellite", 
        "ansible_form_factor": "Notebook", 
        "ansible_distribution": "Archlinux", 
        "ansible_nodename": "satellite", 
        "ansible_os_family": "Archlinux", 
        "ansible_pkg_mgr": "pacman", 
        "ansible_service_mgr": "systemd", 
```
