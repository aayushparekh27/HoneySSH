#!/bin/bash

set -e

echo "[*] Installing dependencies..."
sudo apt update
sudo apt install -y git python3-venv python3-pip libssl-dev libffi-dev build-essential libpython3-dev

echo "[*] Cloning Cowrie..."
git clone https://github.com/cowrie/cowrie.git
cd cowrie

echo "[*] Creating virtual environment..."
python3 -m venv cowrie-env
source cowrie-env/bin/activate

echo "[*] Installing Python dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "[*] Setting up config..."
cp etc/cowrie.cfg.dist etc/cowrie.cfg
echo "Edit 'etc/cowrie.cfg' to customize honeypot settings."

echo "[✔] Cowrie setup complete. Run it with:"
echo "source cowrie-env/bin/activate && bin/cowrie start"
