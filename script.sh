git -C "$HOME/steamac-fex-setup" fetch --depth 1 origin 23b2ecb792cf927f5ba51fbde7346bc6347b0606
git -C "$HOME/steamac-fex-setup" checkout --detach FETCH_HEAD

cd "$HOME/steamac-fex-setup/fex-eac"
JOBS=2 sh build-fex.sh

cd "$HOME/steamac-fex-setup/fex-eac"
sh install-fex-tool.sh

sh install-fex-tool.sh status

python3 -m venv "$HOME/.local/share/legendary-env"
"$HOME/.local/share/legendary-env/bin/python" -m pip install --upgrade pip
"$HOME/.local/share/legendary-env/bin/python" -m pip install "git+https://github.com/derrod/legendary.git"

"$HOME/.local/share/legendary-env/bin/legendary" --version

"$HOME/.local/share/legendary-env/bin/legendary" auth --disable-webview
