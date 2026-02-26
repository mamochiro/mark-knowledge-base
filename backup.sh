#!/bin/bash

cd /Users/sarawut/.openclaw/workspace

# Add all changes
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "No changes to commit"
else
    # Commit with timestamp
    git commit -m "Backup: $(date '+%Y-%m-%d %H:%M')"
    
    # Push to remote
    git push origin main
    echo "Synced to GitHub at $(date)"
fi
