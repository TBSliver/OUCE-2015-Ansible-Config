# Requirements

- Ansible version 1.7.2 (or newer)
- sshpass
  - used for pre-install for hiding the ssh password

# Main User

There are two  users defined in this playbook:

- ansible
  - This user is the main Ansible Worker, and is set up with passwordless sudo
    (and no password).
- me
  - This user is an example user for logging in with if you run this playbook.
    the password set for it is `abc123`

# Use

To use this playbook, create a new ssh key, and put the public part in the
'pubkeys' folder with the name `me.pub`. This will then be installed on the
remote system under the 'me' and 'ansible' users. Modify the hosts file as
required, and then run the following scripts (in this order!):

- pre_install.sh
  - input the root ssh password when prompted
