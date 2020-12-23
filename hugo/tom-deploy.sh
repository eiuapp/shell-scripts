#/bin/bash
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# git push source code ---
msg="rebuilding site `date`"
if [ $# -eq 1  ]
    then msg="$1"
fi

git add -A
git commit -m "$msg"
git push origin master

# Go To Public folder, pull Public
cd public
git pull iuvv master # git remote add iuvv iuvv:iuvv/iuvv.github.io.git
cd ../

# Build the project. 
hugo # if using a theme, replace by `hugo -t <yourtheme>`
# hugo-algolia

# Go To Public folder
cd public

# Add algolia search index
grep -v '"content":' algolia.json>rootsongjc-hugo.json
rm -f algolia.json

# Add changes to git.
git add -A

# Commit changes.
git commit -m "$msg"

# Push source and build repos.
# 
# git pull iuvv master # git remote add iuvv iuvv:iuvv/iuvv.github.io.git
git push origin master # git remote add iuvv iuvv:iuvv/iuvv.github.io.git
# git push gitee master # git remote add gitee git@gitee.com:tomt/blog_tomtsang_hugo_html.git
# git push origin master # git remote add origin git@bitbucket.org:tomtsang/blog_tomtsang_hugo_html.git
# update blog html
# ssh ubuntu@111.230.153.251 /home/ubuntu/shell/update-blog-html.sh

cd ../
