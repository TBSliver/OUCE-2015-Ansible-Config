#! /bin/sh

echo "Starting User Maintenance Ansible Playbook at:"
echo `date`

NOW=$(date +"%F-%T")
LOGFILE="log/$NOW.log"

ANSIBLE_LOG_PATH=$LOGFILE ansible-playbook -i hosts playbooks/change_apt_repo.yml

echo "Finishing User Maintenance Ansible Playbook at:"
echo `date`
