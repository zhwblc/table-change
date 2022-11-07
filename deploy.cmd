npm run build
cd dist
git init
git checkout -b main
git add -A
git commit -m 'deploy'
git push -f git@github.com:zhwblc/table-change.git main:gh-pages
cd ../
git add .
git commit -m 'deploy'
git push