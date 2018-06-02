if type "rvm" >/dev/null 2>&1; then
    dot-info 'Rvm ruby 2.2.5'
    rvm install 2.2.5
else
    dot-info 'Rvm install'
    curl -L get.rvm.io > /tmp/rvm-install
    bash < /tmp/rvm-install
fi

gem install vimgolf
