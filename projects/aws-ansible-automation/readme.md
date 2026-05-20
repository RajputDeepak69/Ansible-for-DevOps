# ☁️ AWS Infrastructure Automation using Ansible

## 👨‍💻 About This Project

I am currently learning Ansible and cloud automation, and this project is part of my hands-on practice with Infrastructure as Code (IaC).

This project automates AWS EC2 instance management using Ansible playbooks, Ansible Vault, dynamic configurations, and password-less SSH authentication.

---

## 🚀 Problem Statement

Managing cloud infrastructure manually becomes repetitive and inefficient as the number of servers increases.

This project automates:

* EC2 instance creation
* Authentication setup
* Server management tasks

using Ansible.

---

## ⚙️ What This Project Does

### ✅ Creates Multiple EC2 Instances

Uses the `amazon.aws.ec2_instance` module to launch EC2 instances with different AMIs and names.

---

### ✅ Uses Ansible Vault

Sensitive AWS credentials are stored securely using:

* Ansible Vault
* External variable files

instead of hardcoding secrets.

---

### ✅ Password-less SSH Authentication

A shell script automates SSH key sharing across multiple servers using:

```bash
ssh-copy-id
```

This enables Ansible to connect without asking for passwords repeatedly.

---

### ✅ Uses Inventory Groups

Different hosts are organized into inventory groups like:

* `app`
* `db`
* `new`

for easier management and automation.

---

### ✅ Fetches Instance Information

Uses:

```yaml
amazon.aws.ec2_instance_info
```

to retrieve EC2 metadata dynamically.

---

### ✅ Automates Shutdown Tasks

Uses Ansible modules to remotely shut down instances automatically.

---

## 🛠️ Tech Used

* Ansible
* YAML
* AWS EC2
* Ansible Vault
* Amazon AWS Collection
* Shell Scripting
* SSH Key Authentication

---

## 📂 Project Structure

```text
aws-ansible-automation/
├── inventory.ini
├── create-instance.yml
├── vault.yml
├── passwordless-auth.sh
├── shutdown.yml
└── README.md
```

---

## 🔐 Security Concepts Used

### Ansible Vault

Used to securely store:

* AWS Access Key
* AWS Secret Key
* Region variables

---

### SSH Key Authentication

Used for secure password-less communication between:

* Control Node
* Managed Nodes

---

## 🌐 Networking Concept Learned

When control node and managed nodes are inside the same VPC, private IPs can be used for communication.

For cross-VPC or hybrid environments, public IPs (or advanced networking solutions like VPN/VPC peering) may be required.

---

## 🧠 Key Learnings

* Writing real-world Ansible playbooks
* Using AWS collections in Ansible
* Automating cloud infrastructure
* Managing inventories and groups
* Using Ansible Vault securely
* Automating SSH authentication
* Understanding cloud networking basics

---

## ❗ Why This Is Important

Instead of manually:

* launching servers
* configuring access
* managing infrastructure

we can automate everything using Ansible.

This saves:

* time
* manual effort
* repetitive work

and helps manage infrastructure more efficiently at scale.

---

## ⭐ Why I Built This

To gain hands-on experience with Ansible automation and understand how real-world DevOps teams manage and automate cloud infrastructure.
