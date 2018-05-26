if type "rvm" >/dev/null 2>&1; then
    rvm install 2.2.5
else
    echo 'Installing rvm'
    curl -L get.rvm.io > /tmp/rvm-install
    bash < /tmp/rvm-install
fi

