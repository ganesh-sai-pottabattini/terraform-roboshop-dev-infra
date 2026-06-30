dnf install ansible -y 
mkdir -p /var/log/roboshop
chown -R ec2-user:ec2-user /var/log/roboshop
chmod 755 /var/log/roboshop
touch /var/log/roboshop/ansible.log 
chmod 755 /var/log/roboshop/ansible.log

component=$1 #mongodb
environment=$2 #dev

cd /home/ec2-user
git clone https://github.com/ganesh-sai-pottabattini/ansible-roboshop-v2-roles.git
cd roboshop-ansible-v2-roles
git pull
ansible-playbook -e component=$component -e env=$environment 1-component-configure.yaml