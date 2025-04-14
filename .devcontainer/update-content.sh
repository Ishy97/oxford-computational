#!/bin/bash
# Update
sudo apt update && sudo apt -y upgrade
pip install --upgrade setuptools

# Install Typst
curl -fsSL https://typst.community/typst-install/install.sh | sh
echo 'export PATH="/home/vscode/.typst/bin:$PATH"' >> ~/.bashrc

# Install latest Pandoc
mkdir /home/vscode/.pandoc
pandoc_git_tag="$(git ls-remote -q -t --refs https://github.com/jgm/pandoc.git | awk '/tags\/[0-9]/{sub("refs/tags/", ""); print $2 }' | awk '!/^$/' | sort -rV | head -n 1)"
curl -sLo- "https://github.com/jgm/pandoc/releases/latest/download/pandoc-${pandoc_git_tag}-linux-amd64.tar.gz" | tar xzf - --strip-components 2 -C "/home/vscode/.pandoc" --exclude="share"
echo 'export PATH="/home/vscode/.pandoc:$PATH"' >> ~/.bashrc

# Install tinytex
quarto install tool tinytex

# Install github-cli
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Create ssh key
yes '' | ssh-keygen -N '' > /dev/null
