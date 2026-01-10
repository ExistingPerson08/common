# Get current shell name
CURRENT_SHELL=$(</proc/$$/comm)

# Only try to call mise if it exists
if command -v mise &>/dev/null; then

  # Handle Bash
  if [[ "$CURRENT_SHELL" == *"bash"* ]]; then
    # bash escape hatch
    if [ "$MISE_BASH_AUTO_ACTIVATE" != "0" ]; then
      eval "$(mise activate bash)"
    fi

  # Handle Zsh
  elif [[ "$CURRENT_SHELL" == *"zsh"* ]]; then
    # zsh escape hatch
    if [ "$MISE_ZSH_AUTO_ACTIVATE" != "0" ]; then
      eval "$(mise activate zsh)"
    fi

  fi
fi
