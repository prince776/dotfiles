times() {
  local count=$1
  shift

  for ((i=0; i<count; i++)); do
    "$@"
  done
}
