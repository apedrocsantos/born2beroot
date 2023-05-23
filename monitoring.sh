ar=$(uname -a)
fcpu=$(cat /proc/cpuinfo | grep "physical id" | uniq | wc -l)
vcpu=$(cat /proc/cpuinfo | grep "physical id" | wc -l)
mem=$(free --mega | grep Mem)
memu=$(echo $mem | awk '{print $3}')
memt=$(echo $mem | awk '{print $2}')
memp=$(echo $mem | awk '{printf ($3/$2)*100}' | awk '{printf ("%.2f%%\n", $0)}')
tdu=$(df -m --total | grep 'total' | awk '{print $3}')
tdt=$(df -BG --total | grep 'total' | awk '{print $2}')
tdp=$(df --total | grep 'total' | awk '{print $5}')
cpul=$(top -bn1 | grep "Cpu(s)" | rev | cut -d, -f5 | cut -d' ' -f2 | rev | awk '{printf 100 - $1}')
lb=$(who -b | awk '{print $3" "$4}')
lvm=$(if [ $(lsblk | grep lvm -wc) -eq 0 ]; then echo no; else echo yes; fi)
ctcp=$(ss -t | grep ESTAB | wc -l)
ul=$(users | wc -w)
ip=$(hostname -I | awk '{print $1}') 
mac=$(ip a | grep link/ether | awk '{print $2}')
sd=$(cat /var/log/sudo/sudo.log | grep COMMAND | wc -l)
echo "\t#Architecture: " $ar
echo "\t#CPU physical: " $fcpu 
echo "\t#vCPU: " $vcp
echo "\t#Memory Usage: " $(echo $memu)"/"$(echo $memt)"MB ("$(echo $memp)")" 
echo "\t#Disk Usage: "$(echo $tdu)"/"$(echo $tdt)" ("$(echo $tdp)")"
echo "\t#CPU load: " $cpul%
echo "\t#Last boot: "$lb
echo "\t#LVM use: "$lvm
echo "\t#Connections TCP: " $ctcp ESTABLISHED
echo "\t#User log: " $ul
echo "\t#Network: "  $ip "("$mac")"
echo "\t#Sudo: " $sd cmd

