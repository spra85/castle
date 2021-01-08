function pman {
  if [ -n "$1" ]; then
    man -t "${1}" | open -f -a /Applications/Preview.app
  else
    echo "Usage: pman [application]"
  fi
}

function glogp {
  git log --pretty=format:"%ad - %an: %s" --after="$1" --until="$2"
}


