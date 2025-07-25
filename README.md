# 2.4GHzKiller
Restarts your Wi-Fi whenever you're connected to 2.4GHz network.

# Why
In my case, hotel Wi-Fi had both 2.4 GHz (Wi-Fi 4) and 5 GHz (Wi-Fi 5) APs using the same SSID, and the 2.4 GHz one had better signal by 2 dBm. So my phone was occasionally reconnecting to 2.4 GHz AP, which was way slower.

# How to use
First of all, you need root

Download Termux and grant root access to it.

Run those commands
```shell
apt update && apt upgrade
```


```shell
apt install tsu
```


```shell
sudo sh /path/to/2400MHzKiller.sh
```
