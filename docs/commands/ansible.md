# Ansible

## Playbook

### Run a playbook

```sh
ansible-playbook -i /path/to/my_inventory_file -u my_connection_user -k -f 3 -T 30 -t my_tag -M /path/to/my_modules -b -K my_playbook.yml
```

> Loads <my_playbook.yml> from the current working directory and:
>  `-i` - uses my_inventory_file in the path provided for inventory to match the pattern.
>  `-u` - connects over SSH as my_connection_user.
>  `-k` - asks for password which is then provided to SSH authentication.
>  `-f` - allocates 3 forks.
>  `-T` - sets a 30-second timeout.
>  `-t` - runs only tasks marked with the tag my_tag.
>  `-M` - loads local modules from /path/to/my/modules.
>  `-b` - executes with elevated privileges (uses become).
>  `-K` - prompts the user for the become password.

## Galaxy

### Upgrade requirements

```sh
ansible-galaxy collection install -r <requirements_file> --upgrade
```

## Advanced

### Install python library when ansible is installed with brew (one of the following depending on the system architecture)

```sh
/opt/homebrew/Cellar/ansible/<ansible_version>/libexec/bin/python -m pip install <lib_name>
```

or

```sh
/usr/local/Cellar/ansible/<ansible_version>/libexec/bin/python -m pip install <lib_name>
```
