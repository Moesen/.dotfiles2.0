ZSHRC_PATH = ~/.dotfiles2.0/zsh/.zshrc

symlinks:
	echo $(ZSHRC_PATH)
	ln -sf $(ZSHRC_PATH) ~/.zshrc

conda_show:
	conda config --set changeps1 true

conda_hide:
	conda config --set changeps1 false


install_seamless_tmuxvim:
	curl -fsSL https://raw.github.com/mislav/dotfiles/1500cd2/bin/tmux-vim-select-pane -o /usr/local/bin/tmux-vim-select-pane
	chmod +x /usr/local/bin/tmux-vim-select-pane
