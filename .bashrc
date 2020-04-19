# git-reset: will clean the untracked files
alias git-clean="git clean -xfd && git submodule foreach --recursive git clean -xfd"
# git-reset: will reset all the not staged tracked files
alias git-reset="git reset --hard HEAD && git submodule foreach --recursive git reset --hard HEAD"
# git-tag-update : updates the outdated tags (useful when tags are moved)
alias git-tag-update="git submodule foreach --recursive bash -c 'git tag -l | xargs git tag -d' && git submodule foreach --recursive git fetch --tags"
# git-update : will sync the urls of the submodules (also will check for new submodules), and will update (pull) the workspace files
alias git-update="git submodule sync --recursive && git submodule update --recursive --init"
# for each iterator for the submodules
alias git-for='git submodule foreach --recursive git'

# Git log files
alias gitl='git log --oneline --graph --decorate'
alias gitla='git log --oneline --graph --decorate --all'

# Git List all diffs
alias gitdiff-all='echo "# Staged:"; git diff --name-only --cached; echo "# Unstaged:"; git diff --name-only; echo "# Untracked:"; git ls-files -o; echo;echo ; git submodule foreach --recursive bash -c "echo \"# Staged:\"; git diff --name-only --cached; echo \"# Unstaged:\"; git diff --name-only; echo \"# Untracked:\"; git ls-files -o; echo;echo"'
alias gitdiff-unstaged='echo "# Unstaged:"; git diff --name-only; echo;echo ; git submodule foreach --recursive bash -c "echo \"# Unstaged:\"; git diff --name-only; echo;echo"'
alias gitdiff-staged='echo "# Staged:"; git diff --name-only --cached; echo;echo ; git submodule foreach --recursive bash -c "echo \"# Staged:\"; git diff --name-only --cached; echo;echo"'
alias gitdiff-untracked='echo "# Untracked:"; git ls-files -o; echo;echo ; git submodule foreach --recursive bash -c "echo \"# Untracked:\"; git ls-files -o; echo;echo"'

