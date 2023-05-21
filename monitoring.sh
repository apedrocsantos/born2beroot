ar=$(uname -a)
fcpu=$(cat /proc/cpuinfo | grep "physical id" | uniq | wc -l)
vcpu=$(cat /proc/cpuinfo | grep "physical id" | wc -l)
mem=$(free --mega | grep Mem)
memu=$(echo $mem | awk '{printf $3}')
memt=$(echo $mem | awk '{printf $2}')
memp=$(echo $mem | awk '{printf ($3/$2)*100}' | awk '{printf ("%.2f\n", $0)}')
tdu=$(df -BM --total | grep 'total' | awk '{printf $3}')
tdt=$(df -BG --total | grep 'total' | awk '{printf $2}')
tdp=$(df --total | grep 'total' | awk '{printf $5}')
cpul=$()
lb=$(who -b | awk '{printf $3" "}{printf $4}')
lvm=$(if [ $(lsblk | grep lvm -wc) -eq 0 ]; then echo no; else echo yes; fi)
ctcp=$(ss -t state established | wc -l)
ul=$(users | wc -w)
ntw= 
echo "\t#Architecture: " $ar
echo "\t#CPU physical: " $fcpu 
echo "\t#vCPU: " $vcpu
echo "\t#Memory Usage: " $(echo $memu)"/"$(echo $memt)"MB ("$(echo $memp)"%)" 
echo "\t#Disk Usage: "$(echo $tdu)"/"$(echo $tdt)" ("$(echo $tdp)"%)"
echo "\t#CPU load: "
echo "\t#Last boot: "$lb
echo "\t#LVM use: "$lvm
echo "\t#Connections TCP: " $ctcp ESTABLISHED
echo "\t#User log: " $ul
echo "\t#Network:  $(ip a | grep "inet " | awk '{printf $2" "}') ("$(ip a | grep "ether" | awk '{printf $2 " "}')")"
echo "\t#Sudo: "

