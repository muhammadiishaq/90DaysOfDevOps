# Day 32 – Docker Volumes & Networking
## Challenge Tasks

## Task 1: The Problem (Without Volume)

First, I ran a MySQL/Postgres container and created a database with a table and some rows inside it.

Everything was working fine. I could see the data.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t1.png)
   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t2.png)
    
Then I stopped the container and removed it completely.

After that, I ran a new container again using the same image.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t4.png)


**👉 The result: All data was gone.**

### Why did this happen?

Because containers are temporary (ephemeral) by default.
When we remove a container, Docker also deletes its writable layer.
---

## Task 2: Named Volumes (Solution for Data Loss)

This time, I created a mydata volume first.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tt1.png)

Then I ran the same database container but attached that volume to it.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tt2.png)
   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tt3.png)

Again, I created tables and inserted some rows.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tt4.png)


**After that:**

I stopped the container

I removed the container

Then I started a brand new container using the same volume.

**👉 This time, all my previous data was still there.**

### Why?

Because volumes are managed by Docker separately from containers.

So:

- Container deleted ❌

- Volume still exists ✅

- Data still safe ✅

I verified it using:

docker volume ls

docker volume inspect

Now I clearly understand that volumes separate data lifecycle from container lifecycle.
   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tt5.png)

---

## Task 3: Bind Mounts

Next, I created a folder on my local machine and added an index.html file inside it.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/ttt1.png)


Then I ran an Nginx container and bind-mounted that local folder to the Nginx web directory.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/ttt4.png)

When I opened the browser, my HTML page was visible.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/ttt2.png)

Then I edited the HTML file on my local system and refreshed the browser.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/ttt3.png)


**👉 Changes appeared instantly.**

That means the container was directly using my host file.

### Volumes vs Bind Mounts (Simple Difference).....?

**Volumes:**

Managed by Docker

Stored inside Docker’s internal directory

Best for production and databases

Safer and cleaner

**Bind Mounts:**

Directly connect host folder to container

Good for development

Changes reflect immediately

Depends on host folder structure

---

## Task 4: Docker Networking Basics

I listed all Docker networks using docker network ls.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tttt1.png)

Then I inspected the default bridge network.

After that, I ran two containers on the default bridge network.

### Can they ping each other by name?

**👉 No, they cannot.**

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tttt2.png)

### Can they ping each other by IP?


👉 Yes, it works using IP address.

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/tttt3.png)

**Why?**

Because the default bridge network does not have automatic DNS for container names.

So containers don’t recognize each other by name there.

---

## Task 5: Custom Network

Then I created a custom bridge network called my-app-net.

I ran two containers on this network.

Now when I tried to ping using container name:

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t5t1.png)

**👉 It worked successfully.**

**Why does this work?**

Because user-defined networks have built-in DNS.

**That means:**

Containers can resolve each other using names.

No need to remember IP addresses.

Better isolation and communication.

This is why custom networks are recommended for real applications.

---

## Task 6: Final Setup (Real-World Style)

**Finally, I combined everything:**

Created a custom network

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t6t1.png)

Created a mydata volume

Ran a database container with the volume attached

Ran an app container on the same network

   ![image](https://github.com/muhammadiishaq/90DaysOfDevOps/blob/master/2026/day-32/Task-images/t6t2.png)

Then I checked connectivity from the app container to the database using the container name.


**👉 It worked perfectly.**

- This is how real applications run:

- Database with persistent storage (volume)

- Services connected using custom network

- Communication using container names
