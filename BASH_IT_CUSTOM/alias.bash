# Core utils
function fnd { 
    find . -name $1  
}
alias untar='tar -zxvf'

# Network

# List all IP addresses
alias ip='ifconfig | grep -E "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"'
# List IP associated with FQDN
alias ipext='arp `hostname`'

# Fetch secret
alias fetch_secret='~/dev/ddi/sandbox/bin/fetch_secret.mac --cert ~/.ssh/personal_cert/cert.cer --key ~/.ssh/personal_cert/mrajamanickam.key'

# Task warrior
alias tl='task sync; task list'
function ta { 
    task add $1 && task sync 
}
