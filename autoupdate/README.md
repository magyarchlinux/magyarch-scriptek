# Auto-update Arch Linux

It updates 3 times a day at 10:00 AM, 10:00 PM and 0:00.

# Package dependency

* cronie

### Installation

```
$ git clone https://github.com/magyarchlinux/magyarch-scriptek.git
$ cd autoupdate && ./install
``` 

### Log file

The log file can be found here after the first run.

```
$ cat /var/log/cron-pacman-$(date +%Y-%m).log
```

### If you want to change the update interval

```
$ sudo crontab -e
```

Help setting up cron: [Crontab Guru](https://crontab.guru/)
