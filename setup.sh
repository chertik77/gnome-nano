rm -rf ~/.nanorc
rm -rf ~/.nano

for a in "alias n=nano" "alias p=python3"; do
  grep -qxF "$a" ~/.bashrc || echo "$a" >> ~/.bashrc
done


git clone https://github.com/galenguyer/nano-syntax-highlighting.git ~/.nano/nanorc

cat <<EOF > ~/.nanorc
set linenumbers
set autoindent
set tabstospaces
set zero
set mouse
set tabsize 2
set softwrap
set saveonexit
set numbercolor magenta

bind M-z undo main
bind M-Z redo main
bind M-/ comment main

include ~/.nano/nanorc/*.nanorc
EOF

echo "Nano setup complete."
