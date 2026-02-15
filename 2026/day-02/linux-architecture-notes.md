# Linux System Fundamentals

Welcome to the **Linux System Fundamentals** documentation.  
This guide explains the core structure of Linux, the boot process, the file system hierarchy, and essential commands used in daily system operations.

---

## 1. Linux Architecture

Linux follows a layered architecture design. Each layer has a specific responsibility and works together to enable smooth communication between the user and the hardware.

### The Layers

1. **Hardware:**  
   The physical components of a computer such as **CPU, RAM, and Disk storage**.

2. **Kernel:**  
   The heart of the Linux operating system. It directly interacts with the hardware and manages system resources like memory, processes, and devices.

3. **Shell:**  
   A command-line interface that accepts user commands and forwards them to the kernel for execution.

4. **Applications / User:**  
   Software applications (like browsers or editors) and the users interacting with the system.

> **Key Concept:** Programs written in high-level languages (such as C) are converted into binary format (`1010`) so that the computer can understand and execute them.

---

## 2. The Boot Process

The boot process is the sequence of steps that occur when a Linux system is powered on.

1. **Power On:**  
   The system receives power and begins initialization.

2. **BIOS:**  
   The BIOS performs hardware checks and ensures all components are functioning properly.

3. **GNU GRUB:**  
   The bootloader responsible for loading the Linux kernel into memory.

4. **Operating System Loading:**  
   The selected operating system begins loading (e.g., *"Ubuntu Loading..."*).

5. **Init Process / systemd:**  
   The first process started by the kernel (**Process ID 1**). It initializes and manages all other system services.

---

## 3. File System Hierarchy

Linux uses a hierarchical (tree-like) directory structure starting from the root directory (`/`). All files and directories branch out from this single root.

| Directory | Description |
|------------|------------|
| **`/`** | **Root Directory** – The top-level directory of the entire filesystem. |
| `/home` | Home directories for regular users (e.g., `/home/john`). |
| `/root` | Home directory of the **root (administrator)** user. |
| `/boot` | Contains bootloader and kernel-related files. |
| `/etc` | Stores system-wide **configuration** files and scripts. |
| `/bin` | Essential user command binaries such as `ls`, `cp`, and `ping`. |
| `/sbin` | System administration binaries mainly used by the root user (e.g., `shutdown`). |
| `/usr` | Contains most installed applications and user utilities. |
| `/var` | Stores variable data such as system **logs** (`/var/log`). |
| `/dev` | Represents hardware devices (e.g., `/dev/sda` for disks). |
| `/opt` | Used for installing optional or third-party software packages. |
| `/tmp` | Stores temporary files, usually cleared after reboot. |
| `/lib` | Shared libraries required by programs in `/bin` and `/sbin`. |
| `/media` | Mount point for removable devices like USB drives and CDs. |
| `/proc` | Virtual filesystem providing information about running processes and the kernel. |

---

## 4. Essential Commands & Tasks

Below are commonly used commands for file management, networking, and monitoring system resources.

---

### Navigation & File Management

- **Change Directory**
```
cd <path>
```
- **Create a Directory**
```
mkdir <folder_name>
```
- **Create an Empty File**
```
touch <file_name>
```
- **Copy a File**
```
cp <source> <destination>
```
- **Move or Rename a File**
```
mv <old_name> <new_name>
```
- **Examples:**
```
mv file.txt /home/user/docs
mv file.txt newname.txt

```
- **Delete a File**
```
rm <file_name>
```
- **Delete a Folder. **
```
rm -r <folder_name>
```
⚠ Be cautious while using rm -r as it permanently deletes directories.

### Network Operations..

- **Check IP Address**
```
ip addr
```

- **Test Network Connectivity**
```
ping <website>
```

**Example:**
```
ping google.com
```

### System Monitoring

- **Check Disk Space Usage**
```
df -h
```
-h displays sizes in a human-readable format (GB/MB).

- **Check RAM Usage**
```
free -h
```
