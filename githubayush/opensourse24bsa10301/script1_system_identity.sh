#!/bin/bash
# Script 1: System Identity Report
# Author: Ayush Saxena | Course: Open Source Software
# This script displays basic Linux system information in a welcome-screen style.

# --- Variables ---
STUDENT_NAME="Ayush Saxena"
SOFTWARE_CHOICE="Git"

# --- System info ---
DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date '+%d-%m-%Y')
CURRENT_TIME=$(date '+%I:%M:%S %p')
OS_LICENSE="GNU General Public License (GPL) - Linux kernel"

# --- Display ---
echo "=============================================="
echo "         Open Source Audit Welcome Screen      "
echo "=============================================="
echo "Student Name     : $STUDENT_NAME"
echo "Chosen Software  : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "Linux Distro     : $DISTRO"
echo "Kernel Version   : $KERNEL"
echo "Logged-in User   : $USER_NAME"
echo "Home Directory   : $HOME_DIR"
echo "System Uptime    : $UPTIME"
echo "Current Date     : $CURRENT_DATE"
echo "Current Time     : $CURRENT_TIME"
echo "OS License       : $OS_LICENSE"
echo "=============================================="
echo "This Linux system supports open-source values."
echo "=============================================="