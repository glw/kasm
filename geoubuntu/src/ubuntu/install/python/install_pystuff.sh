#!/usr/bin/env bash

apt-get update && apt-get install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

# Install pyenv
curl https://pyenv.run | bash

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

source ~/.bashrc

pyenv install 3.10.0
pyenv global 3.10.0

# # Install pipx
# python3 -m pip install --user pipx

# # Install pipenv
# pipx install --user pipenv

# # Install poetry
# pipx install poetry

# poetry completions bash >> ~/.bash_completion
# source ~/.bashrc