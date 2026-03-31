#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Ayush Saxena | Course: Open Source Software
# This script audits important Linux directories by displaying
# their permissions, owner/group, and disk usage.

# --- List of important system directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================================="
echo "                 Disk and Permission Auditor                  "
echo "=============================================================="
echo "Directory Audit Report"
echo "--------------------------------------------------------------"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # Get size of directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory   : $DIR"
        echo "Permissions : $PERMS"
        echo "Owner/Group : $OWNER / $GROUP"
        echo "Size        : $SIZE"
        echo "--------------------------------------------------------------"
    else
        echo "$DIR does not exist on this system"
        echo "--------------------------------------------------------------"
    fi
done

# --- Check Git configuration directory ---
GIT_CONFIG_DIR="$HOME/.config/git"
GIT_GLOBAL_FILE="$HOME/.gitconfig"

echo "Git Configuration Check"
echo "--------------------------------------------------------------"

if [ -d "$GIT_CONFIG_DIR" ]; then
    GIT_PERMS=$(ls -ld "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "Git config directory found: $GIT_CONFIG_DIR"
    echo "Permissions / Owner / Group: $GIT_PERMS"
else
    echo "Git config directory not found: $GIT_CONFIG_DIR"
fi

if [ -f "$GIT_GLOBAL_FILE" ]; then
    FILE_PERMS=$(ls -l "$GIT_GLOBAL_FILE" | awk '{print $1, $3, $4}')
    echo "Git global config file found: $GIT_GLOBAL_FILE"
    echo "Permissions / Owner / Group: $FILE_PERMS"
else
    echo "Git global config file not found: $GIT_GLOBAL_FILE"
fi

echo "=============================================================="
echo "Audit Completed Successfully"
echo "=============================================================="