# ☁️ Ansible Lab: Delete Stopped EC2 Instances

## 👨‍💻 About This Lab

This lab is part of my hands-on learning with Ansible and AWS automation.

The goal of this playbook is to automatically identify and delete stopped EC2 instances using Ansible AWS modules.

---

## 🚀 Problem Statement

In cloud environments, stopped EC2 instances may still remain unused for long periods and create unnecessary infrastructure clutter.

Manually identifying and deleting them is repetitive.

👉 This playbook automates the cleanup process.

---

## ⚙️ How It Works

### ✅ Step 1: Fetch Stopped Instances

Uses:

```yaml id="b5d8c1"
amazon.aws.ec2_instance_info
```

to gather EC2 instances with:

```yaml id="f9a1k2"
instance-state-name: stopped
```

---

### ✅ Step 2: Store Results

The gathered instances are stored using:

```yaml id="r7m2v9"
register: result
```

---

### ✅ Step 3: Delete Instances

Loops through all stopped instances and deletes them using:

```yaml id="z4p6q3"
amazon.aws.ec2_instance
```

with:

```yaml id="n8x4t5"
state: absent
```

---

## 🛠️ Tech Used

* Ansible
* AWS EC2
* Amazon AWS Collection
* Ansible Vault
* YAML

---

## 📂 Project Structure

```text id="t1w8l0"
delete-stopped-ec2/
├── playbook.yml
├── vault.yml
├── README.md
```

---

## 🔐 Security Practice

AWS credentials are stored securely using:

* Ansible Vault
* External variable files (`vault.yml`)

instead of hardcoding secrets inside playbooks.

---

## 💡 Key Learnings

* Gathering EC2 information dynamically
* Using filters in Ansible modules
* Looping through resources using `loop`
* Automating AWS resource cleanup
* Using conditional execution with `when`

---

## ❗ Why This Is Important

Instead of manually:

* checking stopped instances
* copying instance IDs
* deleting resources one by one

Ansible can automate the entire workflow.

This helps:

* save time
* reduce manual effort
* maintain cleaner cloud infrastructure

---

## ⚠️ Safety Note

Always verify gathered instances before deletion in production environments.

This playbook should be tested carefully to avoid accidental deletion of important resources.

---

## ⭐ Why I Built This

To practice AWS automation with Ansible and understand how infrastructure cleanup tasks can be automated in real-world DevOps environments.
