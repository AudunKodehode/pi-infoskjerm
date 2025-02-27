#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install necessary packages
sudo apt install -y chromium-browser unclutter x11-xserver-utils

# Create the autostart directory if it doesn't exist
mkdir -p ~/.config/autostart

# Create a new .desktop file to autostart Chromium in kiosk mode
cat <<EOF > ~/.config/autostart/kiosk.desktop
[Desktop Entry]
Type=Application
Name=Kiosk Browser
Exec=chromium-browser --noerrdialogs --kiosk https://app.infoskjermen.no/live/ --incognito --disable-extensions --disable-software-rasterizer --start-fullscreen
X-GNOME-Autostart-enabled=true
EOF

# Create a script to hide the mouse cursor using 'unclutter'
cat <<EOF > ~/.xsessionrc
#!/bin/bash
unclutter &
EOF

# Give execute permission to the script
chmod +x ~/.xsessionrc

# Disable screen blanking (prevents screensaver and power saving mode)
xset s off
xset -dpms
xset s noblank

# Reboot the system to apply changes
echo "Rebooting to apply changes..."
sudo reboot
