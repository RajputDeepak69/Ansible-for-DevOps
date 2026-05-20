#!/bin/bash

# a quick shell script to set passwordless auth although for large no of ips we can use a seprate text files which include all ips
target=("ec2-user@x.x.x.x" "ec2-user@x.x.x.x" "ubuntu@x.x.x.x")

path="$path/to/public/key"

for ip in "${target[@]}"; do
	echo "processing $ip ....."
	ssh-copy-id -f -i $path -o "IdentityFile ~/path/to/pem-file" $i
done

echo "ho gya sir ..."


