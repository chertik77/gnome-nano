rm -rf ~/.nanorc
rm -rf ~/.nano

if ! grep -q "alias n=nano" ~/.bashrc; then
  echo 'alias n=nano' >> ~/.bashrc
fi

git clone https://github.com/galenguyer/nano-syntax-highlighting.git ~/.nano/nanorc

echo "set linenumbers
set autoindent
set zero
set mouse
set tabsize 2
set softwrap
set saveonexit
set numbercolor magenta
set titlecolor white

include ~/.nano/nanorc/*.nanorc
" >> ~/.nanorc
