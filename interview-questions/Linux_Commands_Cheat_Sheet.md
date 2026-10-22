# Linux Commands Cheat Sheet for DevOps

> Linux commands and short explanations converted from the provided PDF into Markdown for GitHub.

## Navigation

| Command | Purpose |
|---|---|
| `pwd` | Print working directory. |
| `ls` | List directory contents. |
| `ls -la` | List all files with details, including hidden files. |
| `cd /path` | Change to a path. |
| `cd ..` | Go to the parent directory. |
| `cd ~` | Go to the home directory. |
| `tree` | Display directories as a tree. |

## Files and directories

| Command | Purpose |
|---|---|
| `touch file.txt` | Create an empty file or update its timestamp. |
| `mkdir dir` | Create a directory. |
| `mkdir -p a/b/c` | Create nested directories. |
| `cp src dst` | Copy a file or directory. |
| `cp -r dir1 dir2` | Copy a directory recursively. |
| `mv old new` | Move or rename a file or directory. |
| `rm file` | Remove a file. |
| `rm -rf dir` | Remove a directory tree. **Use with caution.** |
| `rmdir emptydir` | Remove an empty directory. |
| `stat file` | Show file metadata and timestamps. |
| `basename /path/file` | Print the filename from a path. |
| `dirname /path/file` | Print the directory path from a filename. |

## Viewing and paging

| Command | Purpose |
|---|---|
| `cat file` | Print file contents. |
| `tac file` | Print file contents in reverse. |
| `head -n 20 file` | Show the first 20 lines. |
| `tail -n 20 file` | Show the last 20 lines. |
| `tail -f logfile` | Follow file updates, useful for logs. |
| `less file` | Page through a file with search. |
| `more file` | Basic pager for files. |
| `nl file` | Number lines while viewing. |
| `wc -l file` | Count lines in a file. |

## Search and text processing

| Command | Purpose |
|---|---|
| `grep "pattern" file` | Search for a pattern in a file. |
| `grep -ri "pattern" dir/` | Search recursively and case-insensitively. |
| `sort file` | Sort lines in a file. |
| `uniq file` | Omit repeated adjacent lines. |
| `cut -d ':' -f 1 file` | Select delimited fields. |
| `awk '{print $1}' file` | Print the first column. |
| `sed -i 's/old/new/g' file` | Find and replace in place. |
| `tr 'a-z' 'A-Z'` | Translate lowercase characters to uppercase. |
| `paste file1 file2` | Merge lines side by side. |
| `tee out.txt` | Write output to a file and stdout. |

## Permissions and ownership

| Command | Purpose |
|---|---|
| `chmod 644 file` | Set permissions to `rw-r--r--`. |
| `chmod 755 file` | Set permissions to `rwxr-xr-x`. |
| `chmod +x script.sh` | Make a file executable. |
| `chown user:group file` | Change owner and group. |
| `chgrp group file` | Change group ownership. |
| `umask 022` | Set the default permissions mask. |
| `getfacl file` | View file ACLs. |
| `setfacl -m u:user:rwx file` | Set an ACL for a user. |

## Processes and jobs

| Command | Purpose |
|---|---|
| `ps aux` | List all processes with details. |
| `top` | Interactive process viewer. |
| `htop` | Enhanced process viewer, if installed. |
| `pgrep name` | Find process IDs by process name. |
| `pkill name` | Send signals by process name. |
| `kill PID` | Send a signal to a process by PID. |
| `killall name` | Terminate processes by name. |
| `nice -n 10 cmd` | Start a command with adjusted priority. |
| `renice -n 10 -p PID` | Change priority of a running process. |
| `jobs` | List shell jobs. |
| `bg %1` | Resume a job in the background. |
| `fg %1` | Bring a job to the foreground. |
| `nohup command &` | Ignore hangups and run in the background. |
| `time command` | Measure command execution time. |
| `watch -n 1 free` | Rerun a command at intervals. |

## System information and logs

| Command | Purpose |
|---|---|
| `uname -a` | Show kernel and system information. |
| `hostnamectl` | View or set the hostname. |
| `uptime` | Show uptime and load averages. |
| `free -h` | Show memory and swap usage. |
| `vmstat` | Show virtual memory statistics. |
| `iostat` | Show CPU and I/O statistics. |
| `mpstat` | Show per-CPU usage statistics. |
| `pidstat` | Show per-process statistics. |
| `lscpu` | Show CPU architecture details. |
| `lsusb` | List USB devices. |
| `lspci` | List PCI devices. |
| `lshw` | Show hardware inventory. |
| `dmesg` | Show kernel ring-buffer messages. |
| `journalctl -xe` | View recent critical system logs. |
| `journalctl -u nginx` | View logs for a systemd unit. |

## Disks, partitions, and filesystems

| Command | Purpose |
|---|---|
| `df -h` | Show mounted filesystem disk usage. |
| `du -sh dir/` | Show a directory's total size. |
| `lsblk` | List block devices. |
| `blkid` | Print block-device attributes. |
| `fdisk -l` | List partition tables. |
| `parted -l` | List partitions with `parted`. |
| `mkfs.ext4 /dev/sdX1` | Create an ext4 filesystem. **Destructive if used on a device containing data.** |
| `fsck /dev/sdX1` | Check and repair a filesystem. |
| `mount /dev/sdX1 /mnt` | Mount a partition. |
| `umount /mnt` | Unmount a filesystem. |
| `cat /etc/fstab` | View the persistent mount table. |

## Networking and DNS

| Command | Purpose |
|---|---|
| `ip addr` | Show IP addresses. |
| `ip route` | Show the routing table. |
| `ping -c 4 host` | Test connectivity with four packets. |
| `traceroute host` | Trace the network path. |
| `ss -tuln` | List listening sockets and ports. |
| `netstat -tuln` | List sockets and ports using the legacy tool. |
| `nslookup example.com` | Query DNS. |
| `dig example.com` | Make a detailed DNS query. |
| `curl -I https://example.com` | Make an HTTP request for response headers. |
| `wget https://example.com/file` | Download a file. |
| `ssh user@host` | Connect via SSH. |
| `scp file user@host:/path/` | Copy a file over SSH. |
| `sftp user@host` | Start an interactive file transfer over SSH. |
| `nc -l -p 1234` | Listen on TCP port 1234. |
| `nc host 80` | Connect to TCP port 80 on a host. |
| `tcpdump -i eth0 port 443` | Capture packets matching port 443 on `eth0`. |
| `nmap -sS host` | Scan ports using a SYN scan. Only scan systems you are authorized to test. |
| `ufw enable` | Enable the uncomplicated firewall. |
| `ufw allow 22` | Allow SSH traffic on port 22. |
| `iptables -L` | List firewall rules. |
| `firewall-cmd --list-all` | Show the firewalld configuration. |

## Archiving, compression, and sync

| Command | Purpose |
|---|---|
| `tar -czf archive.tar.gz dir/` | Create a gzip-compressed tar archive. |
| `tar -xzf archive.tar.gz` | Extract a gzip-compressed tar archive. |
| `tar -cf archive.tar dir/` | Create a tar archive. |
| `tar -xf archive.tar` | Extract a tar archive. |
| `zip -r archive.zip dir/` | Create a ZIP archive. |
| `unzip archive.zip` | Extract a ZIP archive. |
| `gzip file` | Compress a file with gzip. |
| `gunzip file.gz` | Decompress a gzip file. |
| `bzip2 file` | Compress a file with bzip2. |
| `bunzip2 file.bz2` | Decompress a bzip2 file. |
| `xz file` | Compress a file with xz. |
| `unxz file.xz` | Decompress an xz file. |
| `rsync -avz src/ dest/` | Sync files locally. |
| `rsync -avz -e ssh src/ user@host:/dest/` | Sync files over SSH. |
| `cpio -ov < filelist > archive.cpio` | Create a cpio archive. |

## Package management: Debian / Ubuntu

| Command | Purpose |
|---|---|
| `apt-get update` | Refresh package lists. |
| `apt-get install nginx` | Install a package. |
| `apt-get upgrade` | Upgrade installed packages. |
| `apt-get remove pkg` | Remove a package. |
| `apt-cache search nginx` | Search packages. |
| `apt-cache show pkg` | Show package details. |
| `dpkg -i pkg.deb` | Install a `.deb` package. |
| `dpkg -r pkg` | Remove a `.deb` package. |

## Package management: RHEL / CentOS / Fedora

| Command | Purpose |
|---|---|
| `yum install pkg` | Install a package. |
| `yum update` | Update packages. |
| `yum remove pkg` | Remove a package. |
| `dnf install pkg` | Install a package with DNF. |
| `dnf update` | Update packages with DNF. |
| `rpm -i pkg.rpm` | Install an RPM package. |
| `rpm -e pkg` | Erase an RPM package. |

## Services and scheduling

| Command | Purpose |
|---|---|
| `systemctl start nginx` | Start a service. |
| `systemctl stop nginx` | Stop a service. |
| `systemctl restart nginx` | Restart a service. |
| `systemctl status nginx` | Check service status. |
| `systemctl enable nginx` | Enable a service at boot. |
| `systemctl disable nginx` | Disable a service at boot. |
| `service nginx start` | Start a service using the legacy command. |
| `service nginx status` | Check service status using the legacy command. |
| `crontab -e` | Edit cron jobs. |
| `crontab -l` | List cron jobs. |
| `crontab -r` | Remove all cron jobs for the current user. |
| `at 09:00` | Schedule a one-time job for 09:00. |
| `batch` | Schedule a job to run when system load is low. |
| `sleep 5s` | Delay for five seconds. |

## Environment and shell

| Command | Purpose |
|---|---|
| `env` | Print environment variables. |
| `echo $VAR` | Print a variable's value. |
| `export VAR=value` | Set/export an environment variable for the current shell and child processes. |
| `which command` | Show a command's path. |
| `history` | Show command history. |
| `alias ll='ls -la'` | Create a command alias. |
| `unalias ll` | Remove an alias. |

## Containers and orchestration

| Command | Purpose |
|---|---|
| `docker run image` | Run a container. |
| `docker ps` | List running containers. |
| `docker ps -a` | List all containers. |
| `docker exec -it container bash` | Open a Bash shell in a container. |
| `docker logs container` | Show container logs. |
| `docker build -t image .` | Build an image. |
| `docker rmi image` | Remove an image. |
| `docker-compose up` | Start a multi-container application. |
| `docker-compose down` | Stop and remove the application containers. |
| `kubectl get pods` | List pods. |
| `kubectl get nodes` | List nodes. |
| `kubectl get services` | List services. |
| `kubectl apply -f file.yaml` | Apply a configuration file. |
| `kubectl logs pod` | View pod logs. |
| `kubectl exec -it pod -- bash` | Execute Bash in a pod, if available. |
| `kubectl describe pod podname` | Describe a pod. |
| `kubectl scale deployment name --replicas=3` | Scale a deployment to three replicas. |
| `kubectl rollout restart deployment name` | Restart a deployment rollout. |
| `helm install release chart` | Install a Helm chart. |
| `helm upgrade release chart` | Upgrade a Helm release. |
| `helm list` | List Helm releases. |
| `helm delete release` | Delete a Helm release. |

## Cloud CLIs

| Command | Purpose |
|---|---|
| `aws configure` | Configure AWS CLI credentials and settings. |
| `aws s3 cp file s3://bucket/` | Upload a file to S3. |
| `aws ec2 describe-instances` | List EC2 instance details. |
| `az login` | Authenticate with the Azure CLI. |
| `az vm list` | List Azure virtual machines. |
| `gcloud auth login` | Authenticate with the Google Cloud CLI. |
| `gcloud compute instances list` | List Google Compute Engine instances. |

## Shutdown and reboot

| Command | Purpose |
|---|---|
| `shutdown -h now` | Power off immediately. |
| `shutdown -r now` | Reboot immediately. |
| `shutdown -h +10` | Schedule power-off in 10 minutes. |
| `reboot` | Restart the system. |
| `poweroff` | Power off the system. |
| `halt` | Halt the system. |
| `init 0` | Switch to the shutdown runlevel. |
| `init 6` | Switch to the reboot runlevel. |

---

## Notes

- Commands and package managers can vary by Linux distribution and installed tools.
- Commands such as `rm -rf`, `mkfs`, `fsck`, firewall changes, `nmap`, and shutdown commands can have significant effects. Check the target and your permissions before running them.
- This file preserves the command list and brief explanations from the supplied PDF, with Markdown formatting for easier reading in GitHub.
