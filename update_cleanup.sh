#!/bin/bash
# System Update and Cleanup Script

echo "🔄 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "🧹 Cleaning up unused packages and cache..."
sudo apt autoremove -y && sudo apt clean

echo "✅ System updated and cleaned successfully!"
