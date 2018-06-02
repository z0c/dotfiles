is-executable rvm || {
    dot-info 'Rvm install'
    curl -L get.rvm.io > /tmp/rvm-install
    bash < /tmp/rvm-install
}

rvm list |grep '2\.2\.5' >/dev/null 2>&1 || {
    dot-info 'Rvm ruby 2.2.5'
    rvm install 2.2.5
}

gem install vimgolf
