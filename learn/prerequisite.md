# Setup EC2 Collection and Authentication

## Install boto3

```
pip install boto3
```

## Install AWS Collection

```
ansible-galaxy collection install amazon.aws
```

## Setup Vault 

1. Create a password for vault

```
openssl rand -base64 32 > ~/.vault_pass.txt   
```

2. Add your AWS credentials using the below vault command

```
ansible-vault create vars/vault.yml --vault-password-file ~/.vault_pass.txt
```




