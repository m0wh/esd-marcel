#!/usr/bin/env sh

set -e
yarn build
cd dist

# if deploying to a custom domain
# echo 'domain.com' > CNAME

git init
git add -A
git commit -m 'Update' --allow-empty
git push -f origin master
# you can replace 'origin' by the repo you want to commit to (e.g. git push -f git@github.com:m0wh/m0wh.github.io.git master:master)

cd -
