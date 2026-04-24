FROM mcr.microsoft.com/devcontainers/base:debian-13

RUN apt-get update && apt-get install -y \
    bash \
    bat \
    btop \
    ca-certificates \
    curl \
    fd-find \
    fzf \
    git \
    lsd \
    ripgrep \
    starship \
    unzip \
    zoxide \
    zsh \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSLf https://mise.run | MISE_INSTALL_PATH=/usr/local/bin/mise sh && \
    echo 'eval "$(mise activate zsh)"' >> /home/vscode/.zshrc && \
    echo 'eval "$(mise activate bash)"' >> /home/vscode/.bashrc

RUN chsh -s /usr/bin/zsh vscode

ENV SHELL=/usr/bin/zsh
