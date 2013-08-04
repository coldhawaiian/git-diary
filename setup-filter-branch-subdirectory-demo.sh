#!/bin/sh

# Create a demo-repo folder, and initialize a Git repository in it
mkdir demo-repo
cd demo-repo
git init

# Setup subfolders
mkdir Models
mkdir Views
mkdir Controllers

# Start "adding features"
touch Models/FacebookUser.cs
touch Views/Login.cshtml
touch Controllers/LoginController.cs
git add "*"
git commit --message "Add Facebook login"

touch Models/TwitterUser.cs
touch Views/Login.cshtml
touch Controllers/LoginController.cs
git add "*"
git commit --message "Add Twitter login"

# Append missing html to Login.cshtml
echo "<!doctype html>
<html>
  <head></head>
  <body></body>
</html>" >> Views/Login.cshtml

# Commit "bug fix"
git commit --all --message "Fix missing Login.cshtml html"

# Finish
echo
echo 'Demo-repo setup complete. `cd` into "demo-repo" and check it out!'
echo "Run the following command when you're ready to try out the
subdirectory filter:

    git filter-branch --subdirectory-filter Models

View the folder root and \"git log\" afterwards. Also, you'll find
references to the old commit tree (before you used filter-branch) in
the directory \".git/refs/original/refs\". You can also view them with
\"git show-ref\".
"
