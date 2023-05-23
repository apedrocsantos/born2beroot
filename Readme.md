# Born2beroot

## Glossary

### Virtual Machine

  Allows the user to run an OS in an app window on the computer that behaves like a separate computer. Can have different OSs running, be used to run software the main OS can’t and try apps in a safe sandboxed environment. Has virtual hardware devices. The OS actually running on the computer is called the host and the OSs running inside VMs are guests.

### Grub
Boot loader. Loads when you first boot up your computer. It normally just boots the Linux kernel, which loads the rest of the OS, but it also provides a menu with options of its own.

### Kernel
core functionality of the OS (memory management, multitasking, dealing with I/O).
Interfaces with the hardware (CPU, RAM, HD, I/O, etc). Middleman between OS and hardware.

### Aptitude vs apt (Advanced Packaging Tool)
Both handle software installation and removal; Aptitude is a higher level package manager, and provides a terminal menu interface, apt is a command-line tool; Both track which packages were manually installed and which were installed as dependencies (and therefore eligible for automatic removal); Aptitude automatically removes eligible packages; Aptitude performs the functions of not just apt-get but also some of its companion tools such as apt-cache and apt-mark; aptitude can suggest solutions to conflicting actions; Aptitude offers better functionality; Aptitude offers why and why-not commands to know more about the behavior of actions;

### Daemon
Daemons are utility programs (processes) that run silently in the background to monitor and take care of certain subsystems to ensure that the operating system runs properly. They perform certain actions at predefined times or in response to certain events. There are many daemons that run on a Linux system, each specifically designed to watch over its own little piece of the system, and because they are not under the direct control of a user, they are effectively invisible, but essential.

### AppArmor
AppArmor is an effective and easy-to-use Linux application security system. AppArmor proactively protects the operating system and applications from external or internal threats, even zero-day attacks, by enforcing good behavior and preventing both known and unknown application flaws from being exploited.

### SSH (Secure Shell)
The SSH protocol is an encrypted protocol designed to give a secure connection over an insecure network, such as the internet. SSH in Linux is built on a portable version of the OpenSSH project. It is implemented in a classic client-server model, with an SSH server accepting connections from SSH clients. The client is used to connect to the server and to display the session to the remote user. The server accepts the connection and executes the session.

### UFW (Uncomplicated Firewall)
Provides a user-friendly framework for managing netfilter and a CLI interface for working with the firewall. Has a few GUI that simplifies working with the system.

### Sudo vs su
Both sudo and su are used to run commands with root permissions. The root user has maximum permissions and can do anything to the system. Normal users on windows run with reduced permissions - e.g. can’t install software or write to system directories. The su command switches to the super user (or root user) when executed with no additional commands, and asks for the root accounts password. If the su bob command is executed, the password for Bob will be prompted and the shell will switch to Bob’s user account. To leave root, type exit. Sudo runs a single command with root privileges. The system prompts for the current user account’s password before running the command as root. Su switches to root user account and requires the root account’s password. Sudo runs a single command with root privileges - it doesn’t switch to the root user or require a separate root user password.

### LVM - Logical Volume Manager (pvdisplay | lvdisplay)
LVM allows for a layer of abstraction between the OS and the disks/partitions it uses. In traditional disk management, the OS looks for what disks are available and then looks at what partitions are avaliable on those disks. With LVM, disks and partitions can be abstracted to contain multiple disks and partitions into one device. Because volume groups and logical volumes aren't physically tied to a hard drive, it makes it easy to dynamically resize and create new disks and partitions.

### TCP (Transmission Control Protocol)
Transport protocol that is used on top of IP to ensure reliable transmission of packets.

### MAC (Media Acess Control)
Mac addresses are associated with specific devices and assigned to them by the manufacturer.

### Install VM
[https://www.howtogeek.com/796988/how-to-install-linux-in-virtualbox]

### Install OS
[https://linuxconfig.org/ubuntu-server-tutorial-for-beginners]
[https://www.howtoforge.com/tutorial/debian-minimal-server/]

### Block Devices
[https://www.howtouselinux.com/post/block-device]

### Apt vs aptitude
[https://unix.stackexchange.com/questions/767/what-is-the-real-difference-between-apt-get-and-aptitude-how-about-wajig]
[https://www.fosslinux.com/43884/apt-vs-aptitude.htm][https://www.fosslinux.com/43884/apt-vs-aptitude.htm]

### AppArmor
[https://www.apparmor.net/]

### SSH
[https://linuxconfig.org/linux-setup-ssh]

### Password policies
[Here](https://ostechnix.com/how-to-set-password-policies-in-linux/)
[https://www.redhat.com/sysadmin/managing-users-passwd]

### Sudo
[https://www.howtogeek.com/111479/htg-explains-whats-the-difference-between-sudo-su/]
[https://www.howtogeek.com/447906/how-to-control-sudo-access-on-linux/]

### Sudoers config
[https://www.sudo.ws/docs/man/1.8.15/sudoers.man/#SUDOERS_OPTIONS] 

### TTY
[THIS](https://www.howtogeek.com/428174/what-is-a-tty-on-linux-and-how-to-use-the-tty-command/)

## Computer Architecture

### Von Neumann Architecture (Princeton Architecture)
Three basic hardware subsystems (cpu, main mem, I/O system); stored program system; carries instructions sequentially. Instructions and data stored in the same unit. Processor cannot read instructions and output data simultaneously.

### Non-Von Neumann Architecture

1. Harvard Architecture
separate memory units (Instructions and Data); Faster.

2. Modified Harvard Architecture
Processor is accompanied by cache module; Faster.

3. SISD (Single Instruction stream, Single Data stream)
Von Neumann Architecture;

### Instruction set architecture (ISA)
Abstract model of a computer, also referred to as computer architecture. A realization of an ISA is called an implementation. An ISA permits multiple implementations that may vary in performance, physical size and monetary cost (among other things), because the ISA serves as the interface between software and hardware. Software that has been written for an ISA can run on different implementations of the same ISA. This has enabled binary compatibility between different generations of computers to be easily achieved, and the development of computer families. Both of these developments have helped to lower the cost of computers and to increase their applicability.

Deals with functional behavior. Design implementation for the various parts of the computer.

Computer architectures are often described as n-bit architecture. Today, n is often 8, 16, 32 or 64, but other sizes have been used.


### 32 vs 64-bit OS
These types of processors tell us how much memory a processor can access from a CPU register. 64 bit systems have the ability to use significantly greater amount of physical memory (more than the 4GB of RAM allowed by a 32-bit machine);

A 64-bit processor can handle 64 bits of data at once, which allows it to compute information faster regardless of the processor’s clock speed. With 64-bit processors having a larger bit size and therefore the ability to calculate bigger numbers, the computer also ends up dealing with everything at a much more precise level than a 32-bit computer; 64-bit processors are compatible with 32-bit operating systems (but not vice-versa);

32 bit hardware and software are often referred to as x86 or x86-32;

64 bit hardware and software are often referred to as x64 or x86-64;


### Binary-code compatibility
the computer system can run the same executable code, typically machine code for a general-purpose computer CPU, that another computer system can run.

For a compiled program on a general operating system, binary compatibility often implies that not only the CPUs of the two computers are binary compatible, but also that interfaces and behaviors of the OS and application programming interfaces (APIs) and the application binary interfaces (ABIs) corresponding to those APIs are sufficiently equal, i.e., compatible.

Most OSes provide binary compatibility, in each version of the OS, for most binaries built to run on earlier versions of the OS.


### Source-code compatibility
recompilation or interpretation is necessary before the program can be run on the compatible system.

### OS
Kernel + Programs and Libraries

### CPU (Central Processing Unit)
Processes instructions that come from programs, the OS, or other components in the PC. The CPU clock speed is the number of instructions it can process in any given second, measured in GHz.
The CPU sits in a socket on the PC's motherboard. Once it's seated in the socket, other parts of the computer can connect to the CPU through buses. Ram connects to the CPU through its own bus, while many PC components use a specific type of bus, called a PCIe.
The CPU isn't the only way to process instructions. Other components, such as the graphics card, have their own onboard processing capabilities. The GPU also uses its own processing capabilities to work with the CPU.
CPUs can have a single core or multi-cores. Some CPUs can virtualize two cores for every one phyical core that's available - *Hyper-threading*. Virtualizing means that a CPU with four cores can function as if it has eight, with the additional virtual CPU cores referred to as separate *threads*. Physical cores, though, perform better than virtual ones.

https://www.lifewire.com/what-is-a-cpu-2618150
https://www.howtogeek.com/194756/cpu-basics-multiple-cpus-cores-and-hyper-threading-explained/
https://www.howtogeek.com/443790/what%E2%80%99s-the-difference-between-intel-core-i3-i5-i7-and-x-cpus/
https://www.howtogeek.com/367931/htg-explains-how-does-a-cpu-actually-work/
