__docker_exec() {
  [[ -z $1 ]] && {
    echo "Pass the ID of the container to attach too."
    return
  }
  docker exec -it "$1" "${2:-/bin/bash}"
}

alias dx='__docker_exec '
