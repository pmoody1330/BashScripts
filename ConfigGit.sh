#!/bin/bash
# basic configurations
git config --global user.name "Paul Moody"
git config --global diff.tool vimdiff
git config --global user.email "paul.moody1330@gmail.com"
git config --global help.autocorrect 20

# aliases
git config --global --add alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit --all"
git config --global --add alias.cm "commit -m"
git config --global --add alias.log5 'log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 5'
git config --global --add alias.log10 'log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 10'
git config --global --add alias.log20 'log --pretty=format:"%h%x09%Cgreen%ae%Creset%x09%Cblue%an%x09%Creset%Cgreen%ad%x09%Creset%s%n" --date=short --name-status -n 20'
git config --global alias.st = status --short -u
git config --global alias.ca 'commit --amend'
git config --global alias.br = branch
git config --global alias.co = checkout
git config --global alias.dt = difftool
git config --global alias.lg = log -p --pretty=fuller --abbrev-commit
#lgg = log --pretty=fuller --abbrev-commit --stat
#up = pull --rebase
