# Ansible VM Manager (Custom Layout)

This project provisions my Proxmox virtual machines (which run Arch Linux) using Ansible, with a project structure adapted to my use case (it does not follow strictly best patterns but it is easier to understand).

## 📁 Project Structure

```
ansible-vm-manager-custom/
├── ansible.cfg                # Ansible configuration
├── inventory.yml              # List of target VMs
├── config/
│   ├── common.yml             # Global packages and settings
│   └── users/
│       ├── vm1.yml            # Per-VM user-specific packages
│       └── vm2.yml
├── main.yml                   # Main playbook to execute
├── README.md
```

## ✅ Pre-requisites

Before running this project, make sure your system meets the following requirements:

### Ansible is installed

On Arch Linux, install it with:

```bash
sudo pacman -Syu ansible
```

### SSH server is installed and running

```bash
sudo pacman -Syu openssh
sudo systemctl enable sshd
sudo systemctl start sshd
```

This ensures SSH is available and will start on boot.

## 🚀 Usage

```bash
ansible-playbook main.yml \
    [-l vm1] \
    -K --ask-pass \
    [-v] \
    [--check] (simulation only)
```

Check connectivity with:

```bash
ansible -i inventory.yml local -m ping -K --ask-pass
```
