rm -rf ~/.nanorc
rm -rf ~/.nano

echo "alias n=nano" >> ~/.bashrc

git clone https://github.com/galenguyer/nano-syntax-highlighting.git ~/.nano/nanorc

echo "set linenumbers
set autoindent
set zero
set tabsize 2
set softwrap
set saveonexit
set numbercolor magenta
set titlecolor white

include ~/.nano/nanorc/python.nanorc
include ~/.nano/nanorc/sh.nanorc
" >> ~/.nanorc
