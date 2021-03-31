# Rust
source "$HOME/.cargo/env"
# Go
export PATH = "$HOME/.go/bin:$PATH"
# Node.js
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Flutter
export PATH = "$HOME/.flutter/bin:$PATH"