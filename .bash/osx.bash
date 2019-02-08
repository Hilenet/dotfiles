# ===
# profile for osx
# ===
if $(cmd_exist openssl) ; then
  export PATH="/usr/local/opt/openssl/bin:$PATH"
fi

if $(cmd_exist rbenv) ; then
  eval "$(rbenv init -)"
fi
