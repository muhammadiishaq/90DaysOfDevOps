# 🐧 Linux Command Quick Reference Guide

This guide provides a structured overview of commonly used Linux commands.  
It focuses on process handling, file system operations, and network troubleshooting — essential skills for daily Linux usage.

---

## ⚙️ Process Control & Monitoring

Use these commands to monitor system performance and manage running processes.

| Command | Example | Purpose |
|---------|---------|----------|
| **`ps`** | `ps aux` | Displays a snapshot of active processes with detailed information. |
| **`top`** | `top` | Shows live system performance and running processes. |
| **`htop`** | `htop` | Enhanced interactive process viewer with better visualization. |
| **`kill`** | `kill 1234` | Stops a process using its Process ID (PID). |
| **`killall`** | `killall firefox` | Terminates all processes matching a specific name. |
| **`pkill`** | `pkill -u username` | Sends signals to processes based on user or name. |
| **`bg`** | `bg %1` | Continues a paused job in the background. |
| **`fg`** | `fg %1` | Brings a background job back to the foreground. |

> 💡 These commands are useful when managing system load or troubleshooting stuck applications.

---

## 📂 File & Directory Management

These commands help you navigate the filesystem and manage files efficiently.

| Command | Example | Purpose |
|---------|---------|----------|
| **`ls`** | `ls -lah` | Lists files and directories with detailed information, including hidden files. |
| **`cd`** | `cd /var/log` | Changes the current directory. |
| **`pwd`** | `pwd` | Displays the full path of the current directory. |
| **`cp`** | `cp -r source dest` | Copies files or directories recursively. |
| **`mv`** | `mv file.txt new.txt` | Moves or renames files and directories. |
| **`rm`** | `rm -rf dir_name` | Deletes files or directories permanently (use carefully). |
| **`mkdir`** | `mkdir -p /a/b/c` | Creates directories, including parent directories if needed. |
| **`chmod`** | `chmod 755 script.sh` | Modifies file permissions (read, write, execute). |
| **`chown`** | `chown user:group file` | Changes ownership of a file or directory. |
| **`df`** | `df -h` | Shows disk usage in a human-readable format. |
| **`du`** | `du -sh folder` | Displays the size of a specific directory. |

> ⚠ Always double-check before using `rm -rf` to avoid accidental data loss.

---

## 🌐 Network Diagnostics & Troubleshooting

These commands help in diagnosing connectivity issues and analyzing network behavior.

| Command | Example | Purpose |
|---------|---------|----------|
| **`ip addr`** | `ip addr show` | Displays network interfaces and assigned IP addresses. |
| **`ping`** | `ping -c 4 google.com` | Tests connectivity to a remote host. |
| **`curl`** | `curl -I https://example.com` | Sends HTTP requests and retrieves response headers. |
| **`dig`** | `dig google.com` | Performs DNS lookups to query domain name servers. |
| **`traceroute`** | `traceroute google.com` | Tracks the route taken by packets to reach a destination. |

> 🌍 These tools are essential for troubleshooting internet and DNS-related issues.

---

## 📌 Why This Cheat Sheet?

This reference is designed to:
- Quickly recall important commands  
- Strengthen Linux fundamentals  
- Assist in system administration tasks  
- Support DevOps and troubleshooting workflows  

---

🚀 Keep practicing these commands daily to become more confident with Linux.
