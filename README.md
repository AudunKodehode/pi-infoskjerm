# 📱 Pi Infoskjerm Kiosk Setup 🎥

## 🌟 Overview
This repository contains a script to automatically configure a **Raspberry Pi** to run a web application in **kiosk mode**. Once set up, the Raspberry Pi will boot into **Chromium browser** and display the **Infoskjermen live page** (`https://app.infoskjermen.no/live/`) in **full-screen mode**. The mouse cursor will be hidden, and the screen will not go to sleep or blank. Perfect for **digital signage** or **kiosk-style** setups! 🖥️✨

---

## 🚀 Features
- **Automatic Kiosk Mode Setup**: Boots the Infoskjermen live page in full-screen mode in **Chromium browser** 🌐.
- **Mouse Cursor Hidden**: The cursor will be hidden using the `unclutter` tool to avoid distractions 🖱️❌.
- **No Screen Blanking**: Screen saver and power-saving features are disabled to keep the display active 🔋.
- **Minimal Setup**: Just run a single command to download and execute the setup script 🔧💨.

---

## 🛠️ Installation

To quickly set up the Raspberry Pi in kiosk mode, you can run a simple **one-liner** that will download and execute the script from this repository.

### Step 1: Run the One-Liner
Open a terminal on your Raspberry Pi and run the following command:

```bash
curl -sSL https://raw.githubusercontent.com/AudunKodehode/pi-infoskjerm/main/setup_kiosk.sh | bash
