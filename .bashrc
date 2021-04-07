# ~/.gitrc
# --------
source ~/.gitrc


# Integration fast commands
alias integrator-git-log-merges='git log --merges --format="format:%Cgreen%B%Creset %n-----------------------------------------%n"'



# Diff command
alias diff='diff -y --width=$(tput cols) --color=always'
alias isdiff='diff -q'

# Grep command
alias grep='grep --color=auto --after-context=5'

# jq command
#alias jq='jq -C'

# Vim fast command 
alias v='vim'

# Fast and helpful commands
# 1. List all the extensions in a folder 
alias lsext='find . -type f | perl -ne "print $1 if m//.([^.//]+)$/" | sort -u'
# 2. Faster git commands
alias gc='git checkout' 
alias gr='git reset' 

# Find duplicates
find_duplicates ()
{
  filter_regex = $1
  find . ! -empty -type f | sed -E 's;[^/]*/([^/]+/)*;;' | sort | uniq -d > /tmp/duplicates.tmp 
  while IFS= read -r line; do 
    echo '# '${line}' #'
    find . -type f -name ${line}; echo '--------------'
  done < /tmp/duplicates.tmp
  rm /tmp/duplicates.tmp
}
export -f find_duplicates
alias find-duplicates="find_duplicates"


# 
# RAH
#
alias rah='ssh inegm@$RAH_MACHINE -xC'

# 
# F.R.I.D.A.Y sounds
# 
source ~/.fridayrc

#
# CTAGS
#
alias ctags='ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -R'

# NVIM
alias nvim='/c/Users/inegm/AppData/Local/nvim/bin/nvim-qt.exe'

function go_corealm()
{
  local id=$1
  chrome "https://forge.vnet.valeo.com/sf/go/${id}"
}
alias corealm='go_corealm'

# Cool prompt powerline
GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -hostname-only-if-ssh -newline -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


