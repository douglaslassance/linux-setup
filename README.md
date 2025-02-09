# linux-setup

# Pre-requisites

- [Asahi](https://asahilinux.org/)

# Install

```shell
sh ./setup.sh
```

# Issues
 
- Support internal microphone.
- Support three finger drag.
- Toggle `fn` modifier.
- Lower trackpad scroll sensitivty.
- Configure custom cursor.
- Setup global scroll inertia.
- Swap to running instances when launching with `wofi`.
- Install Signal.
- Install Discord.
- Install Spotify.
- Install Steam.
- Install Proton Drive.

# Connecting a Bluetooth device

```shell
bluetoothctl
scan on  # To find the MAC address.
scan off  # To stop scanning.
pair <mac-address>
connect <mac-address>
trust <mac-address>
```