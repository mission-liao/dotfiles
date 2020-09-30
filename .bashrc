export PATH="/usr/local/opt:$HOME/.cargo/bin:$HOME/.composer/vendor/bin:$PATH";
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig:/usr/local/opt/libxslt/lib/pkgconfig:$PKG_CONFIG_PATH"

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
