# Set ENV variables
[[ -r "$HOME/.exports" ]] && source "$HOME/.exports"

# Load alises
[[ -r "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Prompt
[[ -r "$HOME/.bash_prompt" ]] && source "$HOME/.bash_prompt"

# Init z (https://github.com/rupa/z)
[[ -r "$HOME/Dev/code/z/z.sh" ]] && source "$HOME/Dev/code/z/z.sh"

# Init RVM
[[ -r "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Init NVM and its bash_completion
[[ -r "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -r "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Init brew bash_completion scripts installed
for bash_completion in /usr/local/etc/bash_completion.d/*; do
  if [[ -r $bash_completion ]]; then
    source $bash_completion
  fi
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh
