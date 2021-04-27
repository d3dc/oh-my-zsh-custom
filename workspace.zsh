function clean_workspace {
  for package in (^node_modules/)#package.json; do
    cd $(dirname $package)
    npm run clean
    cd -
  done
}

function d-cu {
  docker context use $1
}

function d-bash {
  docker exec -it $1 bash
}

alias d-ps='docker ps'

alias dm-s='docker-machine start default'

alias dm-ssh-L='docker-machine ssh default -f -N -L 8000:localhost:8000'
