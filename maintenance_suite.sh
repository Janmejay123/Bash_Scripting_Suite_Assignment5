#!/bin/bash
# Maintenance Suite Menu

while true; do
    clear
    echo "🧰 System Maintenance Suite"
    echo "=============================="
    echo "1. Backup Documents"
    echo "2. Update & Clean System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "=============================="
    read -p "Choose an option: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./log_monitor.sh ;;
        4) echo "👋 Exiting..."; exit 0 ;;
        *) echo "❌ Invalid option! Try again." ;;
    esac
    read -p "Press Enter to continue..."
done
