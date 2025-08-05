# 🖥️ Set GUI as Default Boot Target on App Servers

## 📘 Scenario

With the installation of new tools on the App Servers in the **Stratos Datacenter**, certain applications now require a **Graphical User Interface (GUI)** to function correctly. As a system administrator, your task is to configure the servers so that they **boot into GUI mode by default**, without restarting them immediately.

---

## 🎯 Objective

- Set the **default runlevel** (boot target) to GUI mode (`graphical.target`)
- Perform this on **all App Servers** (App Server 1, 2, and 3)
- ❗ **Do not reboot** the servers after making the change

---

## 🧠 Background

Linux systems using `systemd` manage startup behavior using **targets**, which replaced the older runlevel system.

| Target | Description |
|--------|-------------|
| `multi-user.target` | CLI-only mode (default for servers) |
| `graphical.target`  | GUI + CLI (Desktop environment loaded) |

Changing the default target to `graphical.target` ensures the system boots into a graphical login screen next time it starts.

---

## 🪜 Steps to Configure GUI Boot Mode

> Run the following commands on **each App Server** (App Server 1, 2, and 3) using the appropriate SSH credentials.

### 📦 Bash Commands

```bash
# SSH into each App Server (from the jump host)
ssh tony@stapp01   # App Server 1
ssh steve@stapp02  # App Server 2
ssh banner@stapp03 # App Server 3

# Check the current default boot target
sudo systemctl get-default

# Set GUI mode as the default boot target
sudo systemctl set-default graphical.target

# Verify the change
sudo systemctl get-default

# ❌ DO NOT REBOOT
```
