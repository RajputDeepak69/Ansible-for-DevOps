````markdown
# Ansible Error Handling & Debugging Guide 😭⚙️

While learning Ansible, one thing I realized very quickly:

Most of the learning happens while debugging errors.

This file contains some common errors I faced during my Ansible + AWS learning journey, what they mean, and how to fix them.

---

# 1. YAML Indentation Errors 😿

Probably the most common error while working with Ansible.

## Example Error

```bash
Syntax Error while loading YAML.
mapping values are not allowed in this context
````

## Cause

Wrong spacing or indentation in YAML files.

## Wrong

```yaml
- name: Install nginx
  apt:
   name: nginx
    state: present
```

## Correct

```yaml
- name: Install nginx
  apt:
    name: nginx
    state: present
```

## Learning

Sometimes the issue is not AWS.
Sometimes it is not Ansible.
Sometimes it is just one extra space 😭

---

# 2. Undefined Variable Errors

## Example Error

```bash
'aws_access_key' is undefined
```

## Cause

Variable not loaded correctly from:

* vars file
* inventory
* environment variables
* Ansible Vault

## Fix

Load the vars file properly:

```yaml
- name: Include vault file
  ansible.builtin.include_vars:
    file: vault.yml
```

## Learning

Always verify:

* variable names
* spelling
* variable scope
* vault loading

---

# 3. Wrong Module / Collection Name

## Example Error

```bash
couldn't resolve module/action 'ansible.aws.ec2_instance_info'
```

## Cause

Wrong collection name or typo in module path.

## Wrong

```yaml
ansible.aws.ec2_instance_info
```

## Correct

```yaml
amazon.aws.ec2_instance_info
```

## Learning

Read module names carefully.
One wrong word can break the whole playbook.

---

# 4. SSH Connection Errors

## Example Error

```bash
UNREACHABLE! => Host key verification failed
```

## Cause

SSH host fingerprint changed.

## Fix

Remove old SSH key:

```bash
ssh-keygen -R <ip-address>
```

## Learning

This usually happens when:

* EC2 instances are recreated
* public IP changes
* old SSH fingerprints remain cached

---

# 5. Security Group / Timeout Issues

## Example Error

```bash
ssh: connect to host port 22: Connection timed out
```

## Cause

Port 22 not open in AWS Security Group.

## Fix

Allow SSH access:

| Type | Port | Source  |
| ---- | ---- | ------- |
| SSH  | 22   | Your IP |

## Learning

Most "Ansible issues" are actually networking issues.

---

# 6. Conditional / Typo Errors

## Example Error

```bash
'dict object' has no attribute 'instnaces'
```

## Cause

Typo in variable name.

## Wrong

```yaml
when: result.instnaces | length > 0
```

## Correct

```yaml
when: result.instances | length > 0
```

## Learning

Debugging teaches attention to detail.

---

# 7. Malformed Role Declaration

## Example Error

```bash
ERROR! A malformed role declaration was encountered.
```

## Cause

Wrong playbook structure or indentation.

## Correct Structure

```yaml
---
- hosts: localhost
  roles:
    - test
```

## Learning

Ansible is very strict about YAML formatting.

---

# Final Thoughts 🚀

Learning DevOps is not just about:

* Ansible
* Terraform
* Kubernetes
* AWS

The real learning comes from:

* debugging
* troubleshooting
* Linux
* networking
* understanding systems
* fixing mistakes repeatedly

Errors are frustrating sometimes...
but they are also one of the best teachers in engineering.

Still learning.
Still debugging.
Still fighting YAML spaces 😭

```
```
