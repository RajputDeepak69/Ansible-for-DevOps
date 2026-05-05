# Ansible Concepts: Roles & Ansible Galaxy

## 🌌 Ansible Galaxy

Today I explored **Ansible Galaxy**, which is a platform to find and share reusable Ansible roles and collections.

I also went through the official documentation to understand how roles are structured and used in real-world projects.

---

## 📦 Installing Roles from Galaxy

Ansible Galaxy allows us to install pre-built roles using a simple command:

```id="xk2n1a"
ansible-galaxy role install <role_name>
```

This helps in reusing existing automation instead of writing everything from scratch.

---

## 🛠️ Using Roles in Playbooks

After installing a role, it can be used inside a playbook like this:

```id="z0y1fh"
- hosts: all
  roles:
    - role_name
```

---

## 🚀 Creating & Sharing Custom Roles

I also learned how to:

* Create my own Ansible roles
* Structure them properly (tasks, handlers, defaults, etc.)
* Share them using GitHub

This allows others to reuse my automation code.

---

## ❗ Why It’s Important

In real-world DevOps, many common tasks are already solved by others.

👉 Instead of writing the same configuration again and again:

* We can **reuse existing roles**
* Save time and effort
* Focus on solving new problems instead of repeating work

That’s exactly why Ansible Galaxy exists —
to **avoid reinventing the wheel** and make automation faster and more efficient.

---

## 🧠 Key Learnings

* What Ansible Galaxy is and why it is used
* How to install and use roles from Galaxy
* Basics of creating reusable Ansible roles
* How to share custom roles using GitHub

---

## ⭐ Why I Learned This

To understand how reusable automation works in Ansible and how developers collaborate by sharing roles in real-world DevOps environments.
