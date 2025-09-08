#!/bin/bash
set -e

echo "======================================="
echo "   Novix Tutorial Setup Script 🚀"
echo "======================================="

PROJECT_DIR=~/projects/riscv-os64

echo ">>> Step 1: System update"
sudo apt update && sudo apt upgrade -y

echo ">>> Step 2: Install required packages"
sudo apt install -y clang llvm lld make cmake git python3 python3-pip socat qemu-system-misc gdb-multiarch curl

echo ">>> Step 3: Install VSCode"
sudo snap install --classic code || echo "⚠️  VSCode installation via Snap failed. Install manually."

echo ">>> Step 4: Create project directory on $PROJECT_DIR"
mkdir -p $PROJECT_DIR
cd $PROJECT_DIR

echo ">>> Step 5: Create a basic directory structure"
mkdir -p .vscode bin boot docs fs include kernel sbi scripts servers/init/include servers/windows/include user/bin user/include user/lib

echo ">>> Step 6: OpenSBI downloaden"
cd sbi
curl -LO https://github.com/qemu/qemu/raw/v8.0.4/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin
cd ..

echo ">>> Setup compleet! 🎉"
echo "Project is in: $PROJECT_DIR"

echo ">>> VSCode is starting..."
code $PROJECT_DIR
