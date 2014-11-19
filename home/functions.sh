function pman {
  if [ -n "$1" ]; then
    man -t "${1}" | open -f -a /Applications/Preview.app
  else
    echo "Usage: pman [application]"
  fi
}
