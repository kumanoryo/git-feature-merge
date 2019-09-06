# git-feature-merge
GitFeatureFlowなどでfeature branchをtest-envに一発でmergeしたいために作ったfish

## Requiments
- [fish shell](https://fishshell.com/) >= 2.7.1
- [fisher](https://github.com/jorgebucaran/fisher) >= 3.1.1
- [git](https://git-scm.com/) >= 2.18.0

## Installation
With [fisher](https://github.com/jorgebucaran/fisher)
```console
fisher add kumanoryo/git-feature-merge
```

## Usage
### Command
```console
# default target branch is 'test-env'
git_feature_merge
# set target branch, if -t or --target option
git-feature-merge -t <target branch>
git-feature-merge --target=<target branch>
```

### Alias
```console
# default target branch is 'test-env'
gfm
# set target branch, if -t or --target option
gfm -t <your_gce_instance_name>
gfm --target=<target branch>
```

## Alias
Default alias name: `gfm`.   
Update this file, if you want to change alias name.  
`<your_fish_shell_pass>/conf.d/git_feature_branch.fish`
```fish
set plugin_alias gfm
↓
set plugin_alias <your_alias>
```

## License
git-feature-merge is MIT Licensed.