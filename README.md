# Novix (RISC-V64 Microkernel) — Video Track

Welcome! This repository is the **starting point for the Novix video track**.
It only contains a minimal **tutorial setup script**. You will **build everything else step by step** while following the video tutorial. No large codebase is cloned here.

## What you’ll need
- Oracle VirtualBox (latest)  
- Ubuntu (e.g., 22.04 LTS) as a guest VM  
- VirtualBox Guest Additions mounted in the VM  
  - If the installer complains: `sudo apt install -y bzip2 tar` and run it again  
- Git (with SSH access set up recommended)
- Internet access

## Quick start
```bash
mkdir -p ~/projects
cd ~/projects
git clone https://github.com/NovixManiac/novix-video-tutorial.git
cd novix-video-tutoral
chmod +x novix_tutorial_setup.sh
./novix_tutorial_setup.sh 
