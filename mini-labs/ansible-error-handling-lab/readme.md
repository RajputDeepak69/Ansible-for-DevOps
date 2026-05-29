# ⚙️ Ansible Lab: Error Handling & Conditional Automation

## 👨‍💻 About This Lab

This mini lab is part of my hands-on Ansible learning journey.

The goal of this playbook is to understand:

* error handling in Ansible
* conditional task execution
* service management
* automation logic based on command output

---

## 🚀 Problem Statement

In real-world automation:

* some tasks may fail
* some software may already exist
* services may or may not be installed

Automation should handle these situations gracefully instead of breaking completely.

This playbook demonstrates how Ansible can continue execution and make decisions dynamically.

---

## ⚙️ What This Playbook Does

### ✅ Installs Required Packages

Attempts to install:

* `openssh-client`
* `openssl`

using:

```yaml
ignore_errors: yes
```

This ensures the playbook continues even if package installation fails.

---

### ✅ Checks Docker Availability

Uses:

```yaml
docker --version
```

to check whether Docker is already installed.

The output is stored using:

```yaml
register: output
```

---

### ✅ Uses Conditional Logic

If Docker is not installed:

```yaml
when: output.rc != 0
```

the playbook:

* installs Docker
* starts Docker service
* enables Docker on boot

---

### ✅ Prevents False Change Detection

Uses:

```yaml
changed_when: false
failed_when: false
```

to:

* avoid marking version checks as changed
* prevent the playbook from failing unnecessarily

---

## 🛠️ Tech Used

* Ansible
* YAML
* Ubuntu/Debian Package Management (`apt`)
* Docker
* Linux Service Management

---

## 📂 Project Structure

```text
ansible-error-handling-lab/
├── inventory.ini
├── playbook.yml
└── README.md
```

---

## 🧠 Key Learnings

* Using `ignore_errors` in Ansible
* Understanding `register` variables
* Working with `stdout`, `stderr`, and return codes (`rc`)
* Conditional execution using `when`
* Service management using Ansible
* Idempotent automation practices

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

---

💡 *“In YAML, spaces matter more than emotions.”* 😭

---

## ❗ Why This Is Important

In real-world DevOps automation:

* systems may already be configured
* commands may fail
* packages may already exist

Instead of writing rigid automation, we should build playbooks that can:

* handle failures gracefully
* make decisions dynamically
* continue execution safely

This improves reliability and reduces manual troubleshooting.

---

## ⭐ Why I Built This

To understand how error handling and conditional execution work in Ansible and to practice writing more reliable automation playbooks.
