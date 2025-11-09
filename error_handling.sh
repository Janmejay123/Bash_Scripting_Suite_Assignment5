#!/bin/bash
# Wrapper script with logging and error handling

LOGFILE="$HOME/maintenance_log.txt"

echo "🕒 Starting maintenance: $(date)" >> "$LOGFILE"

if ./maintenance_suite.sh >> "$LOGFILE" 2>&1; then
    echo "✅ Maintenance completed successfully at $(date)" >> "$LOGFILE"
else
    echo "❌ Error occurred during maintenance at $(date)" >> "$LOGFILE"
fi
