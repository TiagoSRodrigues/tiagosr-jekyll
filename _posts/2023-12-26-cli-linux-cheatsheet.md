---
layout: post
title:  "Linux Terminal Cheat Sheet"
date:   2023-12-26 21:33:05 +0000
category: ['cheetsheets','devops']
permalink: /blog/linux-terminal
thumbnail: /assets/img/posts/default-img.jpg

---

## CLi useful command

| OS         | Utility Meaning       | Command            | Description                                                 | Example                                           | Example Description                                  |
|------------|-----------------------|--------------------|-------------------------------------------------------------|---------------------------------------------------|------------------------------------------------------|
| Linux      | List Block Devices    | `lsblk`            | Lists all block devices with their names, sizes, and mounts | `lsblk`                                           | Lists all block devices and their information        |
| Linux      | Disk Free             | `df`               | Shows disk space used and available on filesystems          | `df -h`                                           | Shows human-readable disk space usage                |
| Linux      | Display Message       | `dmesg`            | Displays kernel-related messages                            | `dmesg \| tail`                                   | Shows the last few kernel messages                   |
| Linux      | SMART Control         | `smartctl`         | Checks health of physical drives                            | `sudo smartctl -a /dev/sda`                        | Checks SMART data of `/dev/sda`                      |
| Linux      | File System Check     | `fsck`             | Checks and repairs filesystem inconsistencies               | `sudo fsck /dev/sda1`                             | Checks and repairs filesystem on `/dev/sda1`         |
| Linux      | Mount                 | `mount`            | Mounts a filesystem                                         | `sudo mount /dev/sda1 /mnt/mydrive`                | Mounts `/dev/sda1` to `/mnt/mydrive`                 |
| Linux      | Unmount               | `umount`           | Unmounts a filesystem                                       | `sudo umount /mnt/mydrive`                         | Unmounts `/mnt/mydrive`                              |
| Linux      | List                  | `ls`               | Lists files and directories in a directory                  | `ls -la /mnt`                                     | Lists all files and directories in `/mnt` with details |
| Linux      | Secure Copy           | `scp`              | Copies files over a network securely                        | `scp file.txt remote_user@remote_host:/remote/dir` | Copies `file.txt` to a remote directory              |
| Linux      | Global Regular Express| `grep`             | Searches for patterns in files                              | `grep 'pattern' filename`                          | Searches 'filename' for 'pattern'                    |
| Linux      | AWK Scripting lang    | `awk`              | Processes and analyzes text files                           | `awk '{print $1}' filename`                        | Prints the first column of 'filename'                |
| Linux      | Stream Editor         | `sed`              | Edits and transforms text in a stream                       | `sed 's/old/new/' filename`                        | Replaces 'old' with 'new' in 'filename'              |
| Linux      | Client URL            | `curl`             | Transfers data from or to a server                          | `curl http://example.com`                          | Fetches the content of a web page                    |
| Linux      | Web Get               | `wget`             | Downloads files from the web                                | `wget http://example.com/file`                     | Downloads 'file' from the specified URL              |
| Linux      | Tape Archive          | `tar`              | Compresses and archives files                               | `tar cvzf archive.tar.gz /path/to/dir`             | Creates a gzipped tar archive of a directory         |
| Linux      | Secure Shell          | `ssh`              | Connects to remote servers securely                         | `ssh user@remotehost`                             | Connects to 'remotehost' as 'user'                   |
| Linux      | IP Tables             | `iptables`         | Configures Linux kernel firewall                            | `iptables -L`                                     | Lists all current firewall rules                     |
| Linux      | List Directories      | `ls -l`            | Lists directory contents                                    | `ls -l /path/to/dir`                              | Lists the contents of a directory                    |
| Linux      | Change Directory      | `cd`               | Changes the current directory                               | `cd /path/to/dir`                                 | Changes to the specified directory                   |
| Linux      | Copy Files            | `cp`               | Copies files and directories                                | `cp source.txt dest.txt`                          | Copies 'source.txt' to 'dest.txt'                    |
| Linux      | Move/Rename Files     | `mv`               | Moves/renames files and directories                         | `mv old.txt new.txt`                              | Renames 'old.txt' to 'new.txt'                       |
| Linux      | Remove Files          | `rm`               | Removes files and directories                               | `rm file.txt`                                     | Removes 'file.txt'                                  |
| Linux      | Display File Content  | `cat`              | Concatenates and displays file content                      | `cat file.txt`                                    | Displays the content of 'file.txt'                   |
| Linux      | Find Files            | `find`             | Searches for files in a directory hierarchy                 | `find / -name filename`                           | Finds files named 'filename'                        |
| Linux      | Display Disk Usage    | `du`               | Estimates file space usage                                  | `du -sh /path/to/dir`                             | Shows disk usage of the specified directory          |
| Linux      | Disk Free             | `df`               | Reports file system disk space usage                        | `df -h`                                           | Shows human-readable disk space usage               |
| Linux      | Process Status        | `ps`               | Reports a snapshot of current processes                     | `ps aux`                                          | Shows all running processes                         |
| Linux      | Kill Process          | `kill`             | Sends a signal to a process                                 | `kill -9 PID`                                     | Kills the process with the specified PID             |
| Linux      | Network Interfaces    | `ifconfig`         | Configures network interfaces                               | `ifconfig eth0`                                   | Displays information about 'eth0' interface         |
| Linux      | Display Messages      | `dmesg`            | Displays kernel messages                                    | `dmesg \| grep usb`                               | Filters and displays USB-related kernel messages    |
| Linux      | Stream Editor         | `sed`              | Stream editor for filtering and transforming text           | `sed 's/old/new/' file`                           | Replaces 'old' with 'new' in 'file'                 |
| Linux      | tape archive          |  `tar -cf`         | Create a tar archive                                        | `tar -cf archive.tar /path/to/dir`                  | Creates a tar archive named `archive.tar` of `/path/to/dir`   |
| Linux      | tape archive          |  `tar -xf`         | Extract files from a tar archive                            | `tar -xf archive.tar`                               | Extracts files from `archive.tar`                            |
| Linux      | tape archive          |  `tar -czf`        | Create a gzip compressed tar archive                        | `tar -czf archive.tar.gz /path/to/dir`              | Creates a compressed tar archive with gzip                   |
| Linux      | tape archive          |  `tar -xzf`        | Extract a gzip compressed tar archive                       | `tar -xzf archive.tar.gz`                           | Extracts files from a gzip compressed tar archive            |
| Linux      | tape archive          |  `tar -cjf`        | Create a bzip2 compressed tar archive                       | `tar -cjf archive.tar.bz2 /path/to/dir`             | Creates a compressed tar archive with bzip2                  |
| Linux      | tape archive          |  `tar -xjf`        | Extract a bzip2 compressed tar archive                      | `tar -xjf archive.tar.bz2`                          | Extracts files from a bzip2 compressed tar archive           |
| Linux      | tape archive          |  `tar -tvf`        | List the contents of a tar archive                          | `tar -tvf archive.tar`                              | Lists the contents of `archive.tar` without extracting them  |
| Linux      | tape archive          |  `tar -czvf`       | Create a gzip compressed tar archive with verbose           | `tar -czvf archive.tar.gz /path/to/dir`             | Verbosely creates a gzip compressed tar archive              |
| Linux      | tape archive          |  `tar -xzvf`       | Extract a gzip compressed tar archive with verbose          | `tar -xzvf archive.tar.gz`                          | Verbosely extracts a gzip compressed tar archive             |
| Linux      | tape archive          |  `tar -C`          | Change to directory before performing any operations        | `tar -xzf archive.tar.gz -C /target/directory`      | Extracts files from a tar archive into a specific directory  |
| Linux      | tape archive          |  `tar --exclude`   | Create an archive excluding specified files                 | `tar -czf archive.tar.gz --exclude='*.txt' /path/to/dir` | Creates an archive excluding all `.txt` files               |
| Linux      | File Transfer         | `scp`              | Secure copy (remote file copy program)                      | `scp file.txt user@host:/path`                    | Copies 'file.txt' to a remote host at the specified path |
| Linux      | Secure Shell          | `ssh`              | OpenSSH SSH client (remote login program)                   | `ssh user@host`                                   | Log into a remote host using SSH                        |
| Linux      | System Monitor        | `top`              | Displays Linux tasks                                        | `top`                                             | Displays currently running processes and their stats    |
| Linux      | Archive Files         | `tar`              | Tape Archive, for archiving files                           | `tar czvf archive.tar.gz /path/to/dir`            | Creates a compressed archive of a directory             |
