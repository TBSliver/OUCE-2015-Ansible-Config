#! /bin/sh

echo "Starting Install OpenNMS Ansible Playbook at:"
echo `date`

NOW=$(date +"%F-%T")
LOGFILE="log/$NOW.log"

ANSIBLE_LOG_PATH=$LOGFILE ansible-playbook -i hosts playbooks/install_opennms.yml

echo "Finishing Install OpenNMS Ansible Playbook at:"
echo `date`
