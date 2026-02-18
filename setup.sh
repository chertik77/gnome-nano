rm -rf ~/.nanorc
rm -rf ~/.nano

wget https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh -O- | sh

echo "
set linenumbers
set autoindent
set zero
set tabsize 2
set tabtospaces
set softwrap
set saveonexit
set numbercolor magenta
set titlecolor white

include '~/.nano/nanorc/python.nanorc'
include '~/.nano/nanorc/sh.nanorc'
" >> ~/.nanorc
