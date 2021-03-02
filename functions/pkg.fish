function pkg --description 'Parse package.json files'
  jq ".$argv" package.json
end
