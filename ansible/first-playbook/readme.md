# ⚙️ Ansible Apache Setup Playbook

## 👨‍💻 About This Project

I recently started learning Ansible and this is my first hands-on playbook.

This project focuses on understanding inventory files (`.ini` format) and writing a basic playbook to automate server configuration.

---

## 🚀 What This Playbook Does

* Connects to all hosts defined in the inventory file
* Installs Apache web server (`apache2`)
* Copies a custom `index.html` file to the web server directory
* Sets proper ownership and permissions

---

## ⚙️ How It Works

* Uses `become: true` to run tasks with root privileges
* Uses `apt` module to install packages
* Uses `copy` module to deploy files

---

## 📂 Files in This Project

```id="xg7xul"
ansible-apache-setup/
 ├── inventory.ini
 ├── playbook.yml
 ├── index.html
 └── README.md
```

---

## ▶️ How to Run

```bash id="x2zuhh"
ansible-playbook -i inventory.ini playbook.yml
```

---

## 🧠 Key Learnings

* Writing inventory files in `.ini` format
* Understanding basic Ansible playbook structure
* Using built-in modules like `apt` and `copy`
* Automating server setup tasks

---

## ⭐ Why I Built This

To get hands-on experience with Ansible and understand how automation can simplify server configuration tasks.
