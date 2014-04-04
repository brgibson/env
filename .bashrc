export PATH=$PATH:/Applications/kdiff3.app/Contents/MacOS

alias ll="ls -l"

#navigation
alias aws="ssh -l $AWS_USERNAME -i $AWS_TOKEN $AWS_BOX"
alias gd="ssh -l $GO_DADDY_USERNAME -i $GO_DADDY_TOKEN $GO_DADDY_BOX"
alias brackets="cd ~/Code/brackets"
alias code="cd ~/Code"
alias website="cd ~/Code/personal-website/www/"
alias www="website"

#when a cd won't eject
alias eject="drutil tray eject"

#.bash shortcuts-------------
alias profile="emacs ~/.bash_profile"
alias rc="emacs ~/.bashrc"
alias reload="source ~/.bash_profile ; source ~/.bashrc"

#Notes-----------------------

# java source code location
# /Library/Java/JavaVirtualMachines/1.6.0_22-b04-307.jdk/Contents/Home/src.jar

#Git-------------------------
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BRANCH_COLOR="\[\033[0;36m\]"
NO_COLOR="\[\033[0m\]"

PS1="[\W$BRANCH_COLOR\$(parse_git_branch)$NO_COLOR]\$ "

alias fa="git fetch --all"
alias gclean="git clean -f"
alias gconfig="emacs .git/config"

#git autocomplete
source ~/.git-completion.bash

#commit logs
alias gl="git log --oneline --graph --decorate --color=always --pretty=format:'%Cgreen%h%Creset -%C(yellow)%d%Creset %s'| less -R"
alias lg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)%an <%cn>%Creset' --abbrev-commit --all | less -R"
alias gs="git status"

#diffing
alias difftool="git difftool --no-prompt"
alias dt="difftool"
alias mergetool="git mergetool"
alias mt="mergetool"

alias dom="dt origin/master"
alias gdn="git diff --color=always --name-only origin/master"

# notes

# git config --global user.name "John Doe"
# git config --global user.email johndoe@example.com
# git config --list
# ~/.gitconfig

# git push personal :<BranchName> # deletes a branch on your personal repo
