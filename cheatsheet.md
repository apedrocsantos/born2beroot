## SUDO (Super User Do)
#### Install sudo
1. su -
2. apt get-update / upgrade
3. apt install sudo

#### Check sudo install
sudo -V

#### Su (Switch User)
su - username (if no username, switches to root)

## SSH
#### Instal ssh server
sudo apt install openssh-server

#### Start / stop SSH
1. sudo systemctl start sshd
2. sudo systemctl stop sshd

#### SSH auto-start at boot
sudo systemctl enable ssh

#### Check whether SSH server is running
sudo systemctl status ssh

#### Change ssh port
1. nano /etc/ssh/ssh_config
2. sudo systemctl reload sshd

## UFW
#### Install ufw
1. sudo apt install ufw
2. sudo ufw status
3. sudo ufw enable

#### Open SSH port using ufw
sudo ufw allow 4242

#### Connect using ssh
ssh user@ip -p 4242

#### Close port using ufw
sudo ufw delete allow 4242

#### Deny sudo access do SSH
1. sudo nano /etc/ssh/sshd_config
2. PermitRootLogin no

## PASSWORDS
#### Set password policies
1. sudo apt install libpam-pwquality
2. sudo nano /etc/login.defs
3. sudo nano /etc/security/pwquality.conf

## SUDO GROUP
sudo visudo
user [hosts] = [commands]
ALL ALL=(ALL) ALL -> all users are able to run all commands as all users on all hosts

## USERS
#### Create, modify, delete
adduser (/ useradd / usermod / userdel)
sudo useradd -s /bin/bash -m username
sudo passwd username

#### Change username
sudo usermod -l username newname

#### delete user
sudo userdel [username]
if error -> kill -9 [processnumber]

#### List all users
getent passwd

#### List users logged in
who

#### Logout user
exit or Ctrl - D

## GROUPS
#### Add user to group
usermod -aG sudo [username]

#### Remove user from group
gpasswd -d username groupname

#### List users in group
getent group [group_name]

### List groups
cat /etc/group

## LOCAL GROUPS
groupadd / groupmod / groupdel

## CRON (for root)
#### Enable
sudo systemctl enable cron

#### start crontab
crontab -e
wall (write to all)

## APPArmor
aa-status

## Host
sudo hostnamectl set-hostname [username]
