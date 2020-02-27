# git-reset: will reset all the not staged tracked files, and will clean the untracked files
alias git-reset="git reset --hard HEAD && git submodule foreach --recursive git reset --hard HEAD; git clean -xfd && git submodule foreach --recursive git clean -xfd"
# git-tag-update : updates the outdated tags (useful when tags are moved)
alias git-tag-update="git submodule foreach --recursive bash -c 'git tag -l | xargs git tag -d' && git submodule foreach --recursive git fetch --tags"
# git-update : will sync the urls of the submodules (also will check for new submodules), and will update (pull) the workspace files
alias git-update="git submodule sync --recursive && git submodule update --recursive --init"
# for each iterator for the submodules
alias git-for='git submodule foreach --recursive git'

# Git log files
alias gitl='git log --oneline --graph --decorate'
alias gitla='git log --oneline --graph --decorate --all'
