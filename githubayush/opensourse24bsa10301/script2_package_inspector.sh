#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Ayush Saxena | Course: Open Source Software
# This script checks whether a package is installed, displays version/details,
# and prints a short philosophy note using a case statement.

# --- Variable ---
PACKAGE="git"

echo "=============================================="
echo "          FOSS Package Inspector              "
echo "=============================================="
echo "Checking package: $PACKAGE"
echo "----------------------------------------------"

# --- Check if package is installed (supports both dpkg and rpm systems) ---
if command -v dpkg >/dev/null 2>&1; then
    # Debian/Ubuntu-based systems
    if dpkg -l | grep -qw "$PACKAGE"; then
        echo "$PACKAGE is installed."
        echo ""
        echo "Package Details:"
        dpkg -s "$PACKAGE" | grep -E 'Version|Maintainer|Description'
    else
        echo "$PACKAGE is NOT installed."
    fi

elif command -v rpm >/dev/null 2>&1; then
    # RHEL/Fedora/CentOS-based systems
    if rpm -q "$PACKAGE" &>/dev/null; then
        echo "$PACKAGE is installed."
        echo ""
        echo "Package Details:"
        rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed."
    fi

else
    echo "Neither dpkg nor rpm package manager is available on this system."
fi

echo "----------------------------------------------"

# --- Philosophy note using case statement ---
case $PACKAGE in
    git)
        echo "Git: a distributed version control system built for speed, freedom, and collaboration."
        ;;
    firefox)
        echo "Firefox: a browser that represents the idea of an open and user-first web."
        ;;
    vlc)
        echo "VLC: open-source media software built to play almost anything freely."
        ;;
    mysql)
        echo "MySQL: open-source database software powering millions of applications."
        ;;
    apache2|httpd)
        echo "Apache: the web server that helped build the open internet."
        ;;
    python3|python)
        echo "Python: a community-driven language that made programming more accessible."
        ;;
    *)
        echo "This package represents the practical value of free and open-source software."
        ;;
esac

echo "=============================================="