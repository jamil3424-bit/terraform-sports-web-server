#!/bin/bash

dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<'EOF' > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Terraform Sports Platform</title>
</head>
<body>
  <h1>Terraform Sports Web Server</h1>
  <p>This AWS infrastructure was provisioned automatically with Terraform.</p>
</body>
</html>
EOF