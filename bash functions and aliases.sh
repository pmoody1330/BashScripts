# aliases
alias ..='cd ..'

alias chx='chmod +x'
# chx filename

# get the top 20 file & folders sizes
alias ddu='du -sh * | sort -hr | head -20'

# functions
# find and highlight in red
ftext () 
{
grep -iIHrn --color=always "$1" . | less -R -r
}

# find duplicates
duplicatefind ()
{
find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-repeated=separate
}

# generate a qr code
generateqr ()
{
printf "$@" | curl -F-=\<- qrenco.de
}

# https://www.linuxjournal.com/content/boost-productivity-bash-tips-and-tricks