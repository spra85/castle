function snip {
  if [ -n "$1" ]; then
    if [ ! -f ~/Sites/castle/home/.sublime/"$1".sublime-snippet ]; then
      touch ~/Sites/castle/home/.sublime/"$1".sublime-snippet
      cat ~/Sites/castle/home/.sublime/basic.sublime-snippet > ~/Sites/castle/home/.sublime/"$1".sublime-snippet
    fi
    subl ~/Sites/castle/home/.sublime/"$1".sublime-snippet
  else
    echo "you need to put the name of the file you're trying to create"
    echo "in the snippets directory of .sublime"
    echo "path to: ~/Sites/castle/home/.sublime"
  fi
}

function remove_snip {
  if [ -n "$1" ]; then
    rm ~/Sites/castle/home/.sublime/"$1".sublime-snippet
  else
    echo 'needs the name of a snippet file (w/out .sublime.snippet)'
  fi
}
