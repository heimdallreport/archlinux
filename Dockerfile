FROM archlinuxjp/archlinux
RUN pacman -Syyu && pacman --noconfirm -S grml-zsh-config zsh zsh-completions zsh-lovers vim 
RUN touch /etc/skel/.vimrc && cp /etc/skel/.vimrc /etc/skel/.zshrc /root/ && chsh -s /bin/zsh
RUN useradd -D -s /bin/zsh
CMD zsh 
