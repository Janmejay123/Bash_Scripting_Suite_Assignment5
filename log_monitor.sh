#!/bin/bash
# Monitor /var/log/syslog for critical errors

LOG_FILE="/var/log/syslog"
ALERT_LOG="$HOME/log_alerts.txt"

echo "🚨 Monitoring system logs for CRITICAL errors..."
grep -i "error\|fail\|critical" $LOG_FILE > "$ALERT_LOG"

if [ -s "$ALERT_LOG" ]; then
    echo "⚠️  Errors found! Check $ALERT_LOG"
else
    echo "✅ No critical errors found."
fi
