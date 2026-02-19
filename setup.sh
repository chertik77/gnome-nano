rm -rf ~/.nanorc
rm -rf ~/.nano

if ! grep -q "alias n=nano" ~/.bashrc; then
  echo 'alias n=nano' >> ~/.bashrc
fi

git clone https://github.com/galenguyer/nano-syntax-highlighting.git ~/.nano/nanorc

echo
read -p "Do you want modern keybindings (Alt+z undo, ALt+Z redo, Alt+/ comment)? (y/n): " keys

if [[ "$keys" == "y" || "$keys" == "Y" ]]; then
	KEYBINDS='
bind M-z undo main
bind M-Z redo main
bind M-/ comment main
'
else
  KEYBINDS=""
fi

cat <<EOF > ~/.nanorc
set linenumbers
set autoindent
set zero
set mouse
set tabsize 2
set softwrap
set saveonexit
set numbercolor magenta
set titlecolor white
$KEYBINDS
include ~/.nano/nanorc/*.nanorc
EOF

echo "Nano setup complete."
