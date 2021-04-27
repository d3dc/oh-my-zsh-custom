function add-dock-spacer {
  defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
  killall Dock
}
function fix-spotlight {
  find . -type d -name "node_modules" -exec touch "{}/.metadata_never_index" \;
}
