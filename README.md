Perfect! Here is your **finalized `README.md`** file with your GitHub username `rakibch-bd` and repository name `wp-auto-htaccess-generator` correctly referenced, ready to upload:

---

````markdown
# 🔄 WordPress Auto .htaccess Generator

A simple yet powerful Bash script to scan your server for all WordPress installations and regenerate missing or incomplete `.htaccess` files with the default WordPress rewrite rules.

This is especially useful for system administrators or hosting providers managing multiple WordPress websites where `.htaccess` files may be corrupted, deleted, or improperly configured.

---

## 📋 Features

- 🔍 Automatically detects all WordPress sites by searching for `wp-config.php`
- ✅ Skips sites with valid `.htaccess` rewrite rules
- ⚙️ Generates default `.htaccess` for sites missing or having incomplete rules
- 🐧 Compatible with most Linux-based hosting environments (e.g., cPanel servers)
- 💡 Easy to modify and extend

---

## 📁 Default `.htaccess` Content

This script generates the standard WordPress `.htaccess` content:

```apache
<IfModule mod_rewrite.c>
RewriteEngine On
RewriteBase /
RewriteRule ^index\.php$ - [L]
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule . /index.php [L]
</IfModule>
````

---

## 🚀 Getting Started

### 🔧 Prerequisites

* A Linux server with Bash shell
* Root or sudo access recommended
* Basic command-line experience

---

## ▶️ How to Run

### Step-by-step Instructions:

1. **Clone the repository**

```bash
git clone https://github.com/rakibch-bd/wp-auto-htaccess-generator.git
```

2. **Copy the script to the root directory**

```bash
cp wp-auto-htaccess-generator/wp-htaccess.sh /root/
```

3. **Navigate to the root directory**

```bash
cd /root
```

4. **Run the script**

```bash
sh ./wp-htaccess.sh
```

> ✅ That's it! The script will scan all `/home` directories for WordPress installations and fix or create missing `.htaccess` files automatically.

---

## 📌 Example Output

```bash
🔄 Starting .htaccess regeneration for all WordPress websites...
🔍 Checking: /home/user1/public_html
✅ Existing .htaccess found in /home/user1/public_html, skipping...
🔍 Checking: /home/user2/public_html
⚙️  Creating .htaccess in /home/user2/public_html
✅ .htaccess created in /home/user2/public_html
✅ All done!
```

---

## ⚠️ Notes

* Only regenerates `.htaccess` if it's missing or doesn't contain `RewriteEngine On`
* Make sure Apache’s `mod_rewrite` is enabled for rewrite rules to function
* Always back up existing `.htaccess` files in production environments

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🤝 Contributing

Pull requests are welcome! Please open an issue first to propose improvements or new features.

---

## 📬 Contact

For feedback or questions, feel free to [open an issue](https://github.com/rakibch-bd/wp-auto-htaccess-generator/issues) or contact [md.rakibulislamlusa@gmail.com](mailto:md.rakibulislamlusa@gmail.com).

```
