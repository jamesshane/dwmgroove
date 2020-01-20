# dwmgroove

======

### Parts:

1. Dynamic Window Manager Status Bar

======

#### Dynamic Window Manager Status Bar

This is a very simple bash script to display the CPU Usage, Ram Usage and Disk Usage (/) in [DWM's](https://dwm.suckless.org/status_monitor/) status monitor.

This was designed to work with Linux (testing in Debian).

---

### Installation

1. Download the bash script and save to a location on your machine. (/usr/local/bin)
2. Use `chmod` to make it executable  (e.g. `chmod +x dwmgrooveBar.sh`).
3. Edit your `~/.xinitrc` (or `~/.xsessionrc` for display managers) to include the following line:

```sh
/path/to/dwmgrooveBar.sh &
```

4. Call `xinit`/`startx` or reboot to start the daemon.

