#!/bin/bash
# git push as p 
git config --global alias.p 'push'

# list configuration
git config --global alias.gl 'config --global -l'

# status
git config --global alias.st 'status -sb'

# last commit
git config --global alias.last 'log -1 HEAD --stat'

# commit
git config --global alias.cm 'commit -m'

# remote
git config --global alias.rv 'remote -v'

# vimdiff as diff tool
git config --global alias.dv 'difftool -t vimdiff -y'
# example: git dv 33559c5 ca1494d file1

# search
git config --global alias.se '!git rev-list --all | xargs git grep -F'

# autocorrect
git config --global help.autocorrect 20

# https://opensource.com/article/20/11/git-aliases

# username, hostname, working directory and git branch
brname () {
  a=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$a" ]; then
    echo " [$a]"
  else
    echo ""
  fi
}

# These will clean up files that are showing in git status but have been added to the .gitignore file
# git update-index --assume-unchanged <file>
#git rm --cached <file>

# possible aliases
#st = status --short -uno
#ci = commit
git config --global alias.ca 'commit --amend'
#caa = commit -a --amend
#br = branch
#co = checkout
#df = diff
#lg = log -p --pretty=fuller --abbrev-commit
#lgg = log --pretty=fuller --abbrev-commit --stat
#up = pull --rebase
#latest = log @^{/RELEASE-NOTES:.synced}..

# https://daniel.haxx.se/blog/2020/11/09/this-is-how-i-git/    ----  also some best practices for his repo 