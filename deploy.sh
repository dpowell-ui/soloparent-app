#!/bin/bash
echo "📂 Copying files from Downloads..."
cp ~/Downloads/*.html public/ 2>/dev/null && echo "✅ Files copied" || echo "⚠️ No HTML files found in Downloads"

echo "🚀 Pushing to Railway..."
git add .
git commit -m "Update $(date '+%b %d %I:%M%p')"
git push

echo "✅ Done — Railway is deploying"
