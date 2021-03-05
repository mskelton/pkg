function pkg --description 'Parse package.json files'
  if test -f package.json
    jq ".$argv" package.json
  else
    set -l red (set_color --bold red)
    set -l normal (set_color normal)

    echo -n -s $red "Error: " $normal "Couldn't find a package.json file in the current directory."
  end
end
