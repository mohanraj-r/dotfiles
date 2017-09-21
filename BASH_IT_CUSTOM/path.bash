# Put brew openssl on top
PATH="/usr/local/opt/openssl/bin:$PATH"

# GOPATH
export GOPATH=$(go env GOPATH)
PATH="$PATH:$GOPATH/bin"

# npm local bin path
PATH="./node_modules/.bin:$PATH"

# pipsi - wrapper around pip and virtualenv
PATH=/Users/mrajamanickam/.local/bin:$PATH

# Remove duplicate entries in PATH
# https://unix.stackexchange.com/questions/14895/duplicate-entries-in-path-a-problem
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

export PATH
