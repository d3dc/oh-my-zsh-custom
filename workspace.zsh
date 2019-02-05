function clean_workspace {
  for package in (^node_modules/)#package.json; do
    cd $(dirname $package)
    npm run clean
    cd -
  done
}
