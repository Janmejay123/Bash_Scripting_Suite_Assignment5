#!/bin/bash
# Automated backup script

BACKUP_SRC="/home/$USER/Documents"
BACKUP_DEST="/home/$USER/backups"
TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
BACKUP_FILE="$BACKUP_DEST/backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_FILE" "$BACKUP_SRC" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "✅ Backup successful: $BACKUP_FILE"
else
    echo "❌ Backup failed!"
fi
