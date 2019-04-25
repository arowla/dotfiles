export PYENV_ROOT="$HOME/.pyenv"
POSTGRESAPP_PATH=/Applications/Postgres.app/Contents/Versions/latest/bin
export PATH="$PYENV_ROOT/bin/:$POSTGRESAPP_PATH:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/openssl/bin:$PATH"
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl/include"
