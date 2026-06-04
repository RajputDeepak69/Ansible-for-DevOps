# ☁️ Policy as Code: AWS Compliance & Linux Hardening with Ansible

## 👨‍💻 About This Project

I am currently learning Ansible and cloud automation, and this project is part of my hands-on practice with Infrastructure as Code (IaC), Policy as Code, and security automation.

This project demonstrates how Ansible can be used to automatically enforce infrastructure and security policies across AWS resources and Linux servers instead of relying on manual checks and configurations.

---

## 🚀 Problem Statement

As cloud infrastructure grows, manually ensuring that security and operational policies are consistently followed becomes difficult.

This project demonstrates a Policy as Code approach using Ansible to automatically enforce infrastructure and security standards across AWS resources and Linux servers.

---

## 📜 Policies Enforced

### ☁️ AWS Policies

* All S3 buckets must have versioning enabled

### 🔐 Linux Security Policies

* Root SSH login must be disabled
* Password authentication must be disabled
* Firewall service must be running

### ⚙️ Operational Policies

* Different Linux distributions should be configured automatically using a single playbook
* Infrastructure standards should be enforced consistently across all managed servers

---

## ⚙️ What This Project Does

### ✅ Enforces S3 Bucket Versioning

Uses the `amazon.aws.s3_bucket` module to discover existing buckets and ensure versioning is enabled.

This helps protect against accidental deletion, overwrites, and supports recovery scenarios.

---

### ✅ Uses Ansible Vault

AWS credentials are stored securely using:

* Ansible Vault
* External variable files

instead of hardcoding secrets inside playbooks.

---

### ✅ Applies Linux Security Policies

The playbook automatically:

* Ensures the appropriate firewall service is running
* Disables root SSH login (`PermitRootLogin no`)
* Disables password-based SSH authentication (`PasswordAuthentication no`)
* Restarts the SSH service only when configuration changes occur

---

### ✅ Handles Mixed Linux Distributions

Uses `ansible_os_family` to automatically apply the correct configuration for:

#### RedHat Family

* firewalld
* sshd

#### Debian Family

* ufw
* ssh

This allows a single playbook to work across different Linux environments.

---

## 🛠️ Tech Used

* Ansible
* YAML
* AWS S3
* Ansible Vault
* Amazon AWS Collection
* Linux Administration
* SSH Hardening
* Policy as Code

---

## 📂 Project Structure

```text
policy-as-code-ansible/
├── inventory.ini
├── playbook.yml
├── vault.yml
├── prerequisites.md
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

### SSH Hardening

Used to improve server security by:

* Disabling root login
* Disabling password authentication
* Enforcing key-based authentication practices

---

## 🧠 Key Learnings

* Working with AWS Collections in Ansible
* Discovering and managing AWS resources dynamically
* Using Ansible Vault securely
* Writing multi-play playbooks
* Using facts (`ansible_os_family`) for cross-platform automation
* Applying Policy as Code concepts
* Using handlers to restart services only when required
* Managing Linux services through Ansible
* Automating infrastructure compliance checks

---

## 😄 Common Challenge Faced

One issue I repeatedly faced while writing YAML playbooks was:

### ⚠️ Indentation Errors

Since YAML is highly indentation-sensitive, even:

* one extra space
* wrong alignment
* inconsistent indentation

can break the entire playbook.

This helped me understand the importance of:

* clean formatting
* proper indentation
* consistent YAML structure

💡 *"In YAML, spaces matter more than emotions."* 😭

---

## ❗ Why This Is Important

Instead of manually:

* Checking S3 bucket settings
* Logging into servers one by one
* Editing SSH configuration files
* Managing firewall services individually
* Auditing infrastructure compliance

Ansible can enforce organizational policies automatically and consistently.

This helps:

* Save time
* Reduce manual effort
* Prevent configuration drift
* Improve security posture
* Maintain infrastructure standards at scale

---

## ⭐ Why I Built This

To practice real-world Ansible automation by combining cloud configuration management, Linux administration, and security policy enforcement in a single project.

The goal was to move beyond simple package installation tasks and start implementing automation that resembles real-world compliance, governance, and infrastructure management workflows used in DevOps environments.
