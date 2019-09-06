# Set up an easy-to-use alias.
set plugin_alias "gfm"

# enable alias.
alias $plugin_alias "git_feature_merge"

## disable alias, when uninstall plugin.
set -l name (basename (status -f) .fish){_uninstall}
function $name
  alias -e $plugin_alias
end
