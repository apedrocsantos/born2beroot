## SUDO
#### Install sudo
1. su -
2. apt get update / upgrade
3. apt install sudo

#### Add user to sudo group
1. usermod -aG sudo [username]
2. su visudo

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

#### Allow ssh through firewall
sudo ufw allow ssh

#### Change ssh port
1. nano /etc/ssh/ssh_config
2. sudo systemctl reload sshd

## UFW
#### Install ufw
1. sudo apt install ufw
2. sudo ufw status
3. sudo ufw enable

#### Open SSH port using ufw
sudo ufw allow 4242/tcp

#### Connect using ssh
ssh user@ip -p 4242

#### Deny sudo access do SSH
1. sudo nano /etc/ssh/sshd_config
2. PermitRootLogin no

## PASSWORDS
#### Set password policies
1. sudo apt install libpam-pwquality
2. sudo nano /etc/pam.d/common-password
3. ucredit=-1 | lcredit=-1 | dcredit=-1
4. sudo nano /etc/login.defs
5. PASS_MAX_DAYS | PASS_MIN_DAYS | PASS_WARN_AGE

## USERS
#### Create, modify, delete
adduser (/ useradd / usermod / userdel)

#### List all users
getent passwd

#### List users in group
getent group [group_name]

#### List users logged in
who

#### delete user
sudo userdel [username]
if error -> kill -9 [processnumber]

## LOCAL GROUPS
groupadd / groupmod / groupdel

## SUDOERS
sudo visudo

## CRON (for root)
#### Enable
sudo systemctl enable cron

#### start crontab
crontab -e
wall (write to all)
