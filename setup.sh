rm -rf ~/.nanorc
rm -rf ~/.nano

for a in "alias n=nano" "alias p=python3"; do
  grep -qxF "$a" ~/.bashrc || echo "$a" >> ~/.bashrc
done

curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v1.0.0/install.py | p - 
# Sets a default profile color scheme to Catppuccin Mocha 
gsettings set org.gnome.Terminal.ProfilesList default 95894cfd-82f7-430d-af6e-84d168bc34f5

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
