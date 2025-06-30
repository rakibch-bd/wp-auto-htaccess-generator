#!/bin/bash

# Bash script to regenerate .htaccess files for all WordPress websites
echo "🔄 Starting .htaccess regeneration for all WordPress websites..."

# Loop through all wp-config.php files on the server
find /home -type f -name "wp-config.php" 2>/dev/null | while read -r wp_config; do
    wp_dir=$(dirname "$wp_config")
    htaccess_file="$wp_dir/.htaccess"

    echo "🔍 Checking: $wp_dir"

    # Check if .htaccess exists and contains WordPress rewrite rules
    if [[ -f "$htaccess_file" && $(grep -c "RewriteEngine On" "$htaccess_file") -gt 0 ]]; then
        echo "✅ Existing .htaccess found in $wp_dir, skipping..."
    else
        echo "⚙️  Creating .htaccess in $wp_dir"
        cat > "$htaccess_file" <<'EOF'
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
EOF
        echo "✅ .htaccess created in $wp_dir"
    fi
done

echo "✅ All done!"

