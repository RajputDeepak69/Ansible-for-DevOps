# Ansible Concepts: Ansible Vault

## 🔐 Ansible Vault

Today I learned about **Ansible Vault**, which is used to securely store sensitive data like passwords, API keys, and secrets inside Ansible projects.

---

## 🚀 Problem Statement

In automation, we often deal with sensitive information such as:

* SSH passwords
* API tokens
* Database credentials

Storing them in plain text is insecure.

👉 Ansible Vault solves this problem by encrypting sensitive data.

---

## ⚙️ How It Works

We can encrypt files using:

```id="a1b2c3"
ansible-vault encrypt secrets.yml
```

To edit encrypted files:

```id="d4e5f6"
ansible-vault edit secrets.yml
```

To run playbooks with encrypted data:

```id="g7h8i9"
ansible-playbook playbook.yml --ask-vault-pass
```

---

## 🛠️ Use Case

Instead of writing this:

```id="j1k2l3"
password: mypassword123
```

We store it securely inside an encrypted file.

---

## ❗ Why It’s Important

Security is critical in DevOps.

👉 Ansible Vault helps to:

* Protect sensitive data
* Prevent credential leaks
* Safely share code without exposing secrets

Instead of hardcoding secrets, we **encrypt and manage them securely**.

---

## 🧠 Key Learnings

* What Ansible Vault is
* How to encrypt and decrypt files
* Managing secrets securely in automation
* Importance of security in DevOps

---

## ⭐ Why I Learned This

To understand how to securely manage sensitive data in automation workflows and follow best practices in real-world DevOps environments.
