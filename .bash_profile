if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Add `~/.cargo/bin` to the `$PATH`
export PATH="/usr/local/opt:$HOME/.cargo/bin:$HOME/.composer/vendor/bin:$PATH";
