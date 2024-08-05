va() {
    if [[ -d .venv ]]; then
        source .venv/bin/activate 
    else
        echo "No virtual environment"
    fi
}

venv() {
    va 
    if [[ ! -d .venv ]]; then
        venvprompt=${PWD##*/}
        echo "Creating Python venv $venvprompt"
        python3.10 -m venv .venv --prompt $venvprompt
        va
    fi
}

notify() {
    command="New-BurntToastNotification -Text '$1'"
    /mnt/c/Program\ Files/PowerShell/7/pwsh.exe -Command $command
}
