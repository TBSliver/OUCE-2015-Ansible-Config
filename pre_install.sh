#! /bin/sh

echo "Starting Pre-install Ansible Playbook at:"
echo `date`

NOW=$(date +"%F-%T")
LOGFILE="log/$NOW.log"

ANSIBLE_LOG_PATH=$LOGFILE ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -i hosts -k playbooks/pre_install.yml
