# Function to get current Git branch
parse_git_branch() {
  git branch 2> /dev/null | grep '^*' | colrm 1 2
}

# Customize the bash prompt
export PS1="\W \[\033[32m\](git:\$(parse_git_branch))\[\033[00m\] ➜ "

