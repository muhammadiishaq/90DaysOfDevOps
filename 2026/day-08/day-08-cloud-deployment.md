# Task 8 – Cloud Server Setup: Docker, Nginx & Web Deployment

This task demonstrates launching a cloud server, setting up Docker and Nginx, and deploying a simple web environment on AWS EC2.

---

## Part 1: Launch EC2 Instance & SSH Access

### Step 1: Launch an EC2 Instance
- Created an **Ubuntu Linux instance** on AWS EC2.
- Generated a **key pair** to securely access the server via SSH.
- Configured **security group rules** to allow SSH connections (port 22).

**Explanation:**  
EC2 provides a cloud-based virtual machine. Key pairs ensure passwordless, secure authentication. Security groups act as firewall rules for controlling traffic.

---

### Step 2: Connect to EC2 via SSH
Used the private key to connect from the local terminal:

```
ssh -i your-key.pem ubuntu@<your-instance-ip>
```
**Explanation:**
This command opens a secure SSH session to your EC2 instance using the provided key and public IP.

### **Part 2:** Install Docker & Nginx
**Step 1:** Update System Packages
Updated all packages to the latest available versions:
```
sudo apt update && sudo apt upgrade -y
````

**Explanation:**
Keeping the system updated ensures the latest security patches and software versions are installed.

**Step 2:** Install Docker
Installed Docker, started the service, and enabled it to launch on boot:
```
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
```

**Explanation:**
Docker allows containerized applications. Starting the service and enabling it ensures it runs automatically after system reboot.

**Step 3:** Install Nginx
Installed and started the Nginx web server:
```
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

**Explanation:**
Nginx serves as a web server. Enabling it at startup ensures your website is always available.

### Part 3: Security Group Configuration & Web Access
Test Web Access
Updated the EC2 security group to allow inbound HTTP traffic on port 80.
Opened a browser and accessed the instance:
```
http://<your-instance-ip>
```

**Observation:**
The Nginx default welcome page loads successfully.

**OUTPUT PICTURE..**

![Nginx picture](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-08/nginx.png)

**Explanation:**
Allowing port 80 traffic makes your web server publicly accessible. This verifies that Nginx is correctly installed and reachable.

## Part 4: Extract Nginx Logs
**Step 1:** View Nginx Access Logs
```
sudo cat /var/log/nginx/access.log
```

**Explanation:**
Displays the HTTP requests made to the server, useful for monitoring traffic.

**Step 2:** Save Logs to a File
```
sudo cat /var/log/nginx/access.log > nginx-logs.txt
```
**Logs OutPut Picture**
![Nginx logs](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-08/logs.png)

**Explanation:**
Redirects the log output into a text file so it can be stored or shared.

**Step 3:** Download Logs to Local Machine
**Run from your local machine**
```
scp -i your-key.pem ubuntu@<your-instance-ip>:~/nginx-logs.txt .
```

**Explanation:**
Securely copies the log file from the EC2 server to your local system using SCP (secure copy).

## Key Learnings

Successfully launched an AWS EC2 instance and configured key-based SSH authentication.
Set up security group rules to allow SSH (22) and HTTP (80) traffic.
Installed Docker and Nginx and verified their services are running.
Deployed a web server and confirmed access through the public IP.
Learned how to extract and download server logs for monitoring and analysis.













