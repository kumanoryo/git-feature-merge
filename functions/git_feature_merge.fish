function git_feature_merge
    argparse --name=git_feature_merge 't/target=' -- $argv
    if set -lq _flag_target
      set target_branch $_flag_target
    else
      set target_branch test-env
    end

    set current_branch (git symbolic-ref --short HEAD)

    set branch_exists (git branch --format="%(refname:short)" | grep -c '^'$target_branch'$')
    if [ $branch_exists -eq 0 ]
      # 引数で指定したbranchがない場合: 作成して切り替える
      git checkout -b $target_branch
      if [ $status -ne 0 ]
          echo "create branch: $target_branch"
          return 1
      end
    else if [ $branch_exists -eq 1 ]
      # 引数で指定したbranchがない場合: 作成して切り替える
      git checkout $target_branch
        if [ $status -ne 0 ]
            return 1
        end
    else
      # 予期しない戻り値: 異常終了
      return 1
    end

    git merge $current_branch
    if [ $status -ne 0 ]
      return 1
    end
    git push origin $target_branch
    if [ $status -ne 0 ]
      return 1
    end
    git checkout $current_branch
    if [ $status -ne 0 ]
      return 1
    end
end