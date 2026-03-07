#!/bin/bash
echo "📂 Copying Solo Parent files from Downloads..."

# Remove any duplicate numbered versions first
rm -f ~/Downloads/soloparent-*\ \(*\).html 2>/dev/null

cp ~/Downloads/soloparent-*.html public/ 2>/dev/null && echo "✅ Files copied" || echo "⚠️ No soloparent HTML files found in Downloads"

echo "🚀 Pushing to Railway..."
git add .
git commit -m "Update $(date '+%b %d %I:%M%p')"
git push

echo "✅ Done — Railway is deploying"
