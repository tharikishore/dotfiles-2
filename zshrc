# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi

# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Bootstrap
source ~/.zsh/bootstrap.zsh

# External settings
source ~/.zsh/external.zsh

# Aliases
source ~/.zsh/aliases.zsh

# Custom prompt
source ~/.zsh/prompt.zsh

# Syntax highlighting
source ~/.zsh/syntax.zsh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

# Allow local customizations in the ~/.zshrc_local_after file
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/harikishore/.sdkman"
[[ -s "/home/harikishore/.sdkman/bin/sdkman-init.sh" ]] && source "/home/harikishore/.sdkman/bin/sdkman-init.sh"
