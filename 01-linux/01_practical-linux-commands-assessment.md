# Practical Linux Commands Assessment

**Level:** Beginner  
**Topic:** Linux commands  
**Questions:** 20  
**Final score from practice:** 12.5/20 (62.5%)

## 1. Find all `.log` files under `/var/log`

**Question:** Find all files ending in `.log` recursively under `/var/log`.

**Correct command:**
```bash
find /var/log -type f -name "*.log"
```

**Explanation:**
- `find` searches for files and directories.
- `/var/log` is the starting directory.
- `-type f` searches for regular files only.
- `-name "*.log"` matches filenames ending in `.log`.

**Common mistake:** `cd` changes directories; it does not search recursively for files.

## 2. Display the last 20 lines of a file

**Question:** Display the last 20 lines of `app.log`.

**Correct command:**
```bash
tail -n 20 app.log
```

**Explanation:**
- `tail` displays the end of a file.
- `-n 20` requests 20 lines.
- `app.log` is the target file.

## 3. Display lines containing `ERROR`

**Question:** Display every line containing `ERROR` in `app.log`, including its line number.

**Correct command:**
```bash
grep -n "ERROR" app.log
```

**Explanation:**
- `grep` searches text.
- `-n` displays the matching line number.
- `"ERROR"` is the search pattern.
- `app.log` is the file.

**Remember:** `grep -c "ERROR" app.log` counts matching lines instead of displaying each matching line.

## 4. Display lines that do not contain `ERROR`

**Question:** Display only lines in `app.log` that do not contain `ERROR`.

**Correct command:**
```bash
grep -v "ERROR" app.log
```

**Explanation:**
- `-v` inverts the match, displaying lines that do not match the pattern.

## 5. Add execute permission for the owner only

**Question:** Add execute permission for the file owner of `deploy.sh`, without changing group or other permissions.

**Correct command:**
```bash
chmod u+x deploy.sh
```

**Explanation:**
- `chmod` changes permissions.
- `u` means the owner (user).
- `+x` adds execute permission.
- Existing group and other permissions remain unchanged.

**Important:** `chown` changes file ownership; `chmod` changes permissions.

## 6. Find processes whose command line contains `nginx`

**Question:** Find running processes whose command name or command line contains `nginx`.

**Recommended command:**
```bash
pgrep -af nginx
```

**Alternative:**
```bash
ps aux | grep nginx
```

**Explanation:**
- `pgrep` searches for processes by name or pattern.
- `-a` displays the command line.
- `-f` matches against the full command line.

**Note:** `ps aux | grep nginx` may also show the `grep nginx` command itself. `top | grep nginx` is not a good choice because `top` continuously updates its display.

## 7. Test connectivity to `google.com`

**Question:** Check whether `google.com` responds to network packets.

**Correct command:**
```bash
ping google.com
```

**To send only four packets:**
```bash
ping -c 4 google.com
```

**Explanation:**
- `ping` sends ICMP echo requests and reports responses, timing, and packet loss.
- On many Linux systems, press `Ctrl+C` to stop a continuous ping.

**Note:** A failed ping does not always mean the host is unreachable; a firewall may block ICMP.

## 8. Display total disk usage of `/var/log`

**Question:** Display the total disk usage of `/var/log` in a human-readable format.

**Correct command:**
```bash
du -sh /var/log
```

**Explanation:**
- `du` reports disk usage.
- `-s` displays a summary total.
- `-h` uses human-readable units such as KB, MB, and GB.
- `/var/log` is the directory being measured.

**Remember:** `ps` displays process information, not disk usage.

## 9. Find every file named `deploy.sh` under `/home`

**Question:** Search `/home` and all its subdirectories for files named `deploy.sh`.

**Correct command:**
```bash
find /home -type f -name "deploy.sh"
```

**Explanation:**
- `/home` is an absolute path.
- `-type f` searches for regular files.
- `-name "deploy.sh"` matches the filename exactly.

**Path reminder:**
- `/home` is an absolute path.
- `./home` means a directory named `home` inside the current directory.

## 10. Set permissions to owner read/write only

**Question:** Change `secret.txt` from `-rw-r--r--` to `-rw-------`.

**Correct command:**
```bash
chmod 600 secret.txt
```

**Explanation:**
- Owner `6` = read (`4`) + write (`2`).
- Group `0` = no permissions.
- Others `0` = no permissions.

**Important:** `chmod u+rw secret.txt` would add owner read/write permissions but would not remove permissions from the group or others.

## 11. Terminate a process by PID

**Question:** Request termination of the process with PID `2456`.

**Correct command:**
```bash
kill 2456
```

**Explanation:**
- `kill` sends a signal to a process.
- `2456` is the process ID.
- By default, it sends `SIGTERM`, which requests graceful termination.

**Note:** Do not type the literal word `PID`. Use the numeric process ID. Avoid `kill -9` unless a normal termination does not work and forceful termination is appropriate.

## 12. Display IP addresses on Linux

**Question:** Display the IP addresses assigned to the server's network interfaces.

**Correct command:**
```bash
ip address show
```

**Shortcut:**
```bash
ip a
```

**Explanation:**
- `ip` is used to view and manage network configuration.
- `address show` displays IP addresses for network interfaces.

**Remember:** `ipconfig` is commonly used on Windows; `ip address show` is the standard modern Linux command.

## 13. Copy `app.log` to `app-backup.log`

**Question:** Copy a file while keeping the original unchanged.

**Correct command:**
```bash
cp app.log app-backup.log
```

**Explanation:**
- `cp` copies files.
- The first argument is the source.
- The second argument is the destination.

**Note:** The trailing `.` is unnecessary when the destination filename is already provided.

## 14. Display disk space for mounted filesystems

**Question:** Display used and available disk space for mounted filesystems in human-readable units.

**Correct command:**
```bash
df -h
```

**Explanation:**
- `df` displays filesystem disk-space usage.
- `-h` formats sizes in readable units such as MB and GB.

**Remember:**
- `df -h` shows filesystem space.
- `du -sh /var/log` shows the total usage of a directory.

## 15. Add execute permission for the owner only

**Question:** The file `deploy.sh` has permissions `-rw-r--r--`. Add execute permission for the owner only and preserve every other permission.

**Correct command:**
```bash
chmod u+x deploy.sh
```

**Explanation:**
- `u` selects the owner.
- `+x` adds execute permission.
- Symbolic mode changes only the specified permission, leaving group and other permissions unchanged.

**Why not `chmod 744 deploy.sh`?** Numeric mode `744` sets the complete permission set to `rwxr--r--`. Although that matches this particular starting mode after adding owner execute, `chmod u+x` is the clearer way to add only that permission while preserving all other permissions.

## 16. Display all processes in full format

**Question:** Display all processes, including user names, PIDs, parent PIDs, and command details.

**Correct command:**
```bash
ps -ef
```

**Alternative:**
```bash
ps aux
```

**Explanation:**
- `ps` displays process information.
- `-e` selects all processes.
- `-f` requests a full-format listing.

Common columns in `ps -ef` include:
- `UID`: process owner.
- `PID`: process ID.
- `PPID`: parent process ID.
- `STIME`: process start time.
- `TTY`: controlling terminal, if any.
- `TIME`: accumulated CPU time.
- `CMD`: command that started the process.

## 17. Test whether remote TCP port 22 is reachable

**Question:** Test whether `192.168.1.10` accepts a TCP connection on port `22` (SSH).

**Correct command:**
```bash
nc -zv 192.168.1.10 22
```

**Explanation:**
- `nc` is netcat.
- `-z` checks the port without sending application data.
- `-v` displays connection details.
- `192.168.1.10` is the destination IP.
- `22` is the destination port.

**Note:** This tests TCP reachability, not whether SSH login credentials will work. The `nc` utility may need to be installed first.

## 18. Rename `app.log` to `application.log`

**Question:** Rename a file in the same directory.

**Correct command:**
```bash
mv app.log application.log
```

**Explanation:**
- `mv` moves or renames files and directories.
- When source and destination are in the same directory, it renames the file.

## 19. Search for `database`, ignoring case

**Question:** Find lines containing `database` in `app.log`, regardless of uppercase or lowercase letters.

**Correct command:**
```bash
grep -i "database" app.log
```

**Explanation:**
- `grep` searches file contents.
- `-i` ignores case.
- `"database"` is the search term.
- `app.log` is the file being searched.

This matches `database`, `DATABASE`, `Database`, and other case combinations.

**General syntax:**
```bash
grep -i "search_word" filename
```

## 20. Remove group write permission

**Question:** Remove write permission for the group on `deploy.sh`, leaving all other permissions unchanged.

**Correct command:**
```bash
chmod g-w deploy.sh
```

**Explanation:**
- `g` selects group permissions.
- `-` removes a permission.
- `w` means write.
- `deploy.sh` is the target file.

## Quick Revision Cheat Sheet

| Task | Command |
|---|---|
| Find `.log` files recursively | `find /var/log -type f -name "*.log"` |
| Show last 20 lines | `tail -n 20 app.log` |
| Search with line numbers | `grep -n "ERROR" app.log` |
| Exclude matching lines | `grep -v "ERROR" app.log` |
| Add owner execute permission | `chmod u+x deploy.sh` |
| Find matching processes | `pgrep -af nginx` |
| Test host connectivity | `ping -c 4 google.com` |
| Summarize directory size | `du -sh /var/log` |
| Set owner-only read/write | `chmod 600 secret.txt` |
| Terminate by PID | `kill 2456` |
| Show IP addresses | `ip address show` |
| Copy a file | `cp app.log app-backup.log` |
| Show filesystem disk space | `df -h` |
| List all processes in full format | `ps -ef` |
| Test a TCP port | `nc -zv 192.168.1.10 22` |
| Rename a file | `mv app.log application.log` |
| Search ignoring case | `grep -i "database" app.log` |
| Remove group write permission | `chmod g-w deploy.sh` |

## Practice Advice

Try typing each command in a Linux lab or test environment. For commands that modify files, permissions, or processes, confirm the target and understand the effect before running them on a production server.
