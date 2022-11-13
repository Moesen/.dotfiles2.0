DOTFILES_PATH = ~/.dotfiles2.0/

symlinks:
	# ZSH stuff
	ln -sf $(DOTFILES_PATH)/zsh/.zshrc ~/.zshrc
	ln -sf $(DOTFILES_PATH)/zsh/.zsh_plugins.txt ~/.zsh_plugins.txt
	
	# Alacritty
	ln -sfn $(DOTFILES_PATH)/alacritty ~/.config/alacritty

conda_show:
	conda config --set changeps1 true

conda_hide:
	conda config --set changeps1 false


install_seamless_tmuxvim:
	curl -fsSL https://raw.github.com/mislav/dotfiles/1500cd2/bin/tmux-vim-select-pane -o /usr/local/bin/tmux-vim-select-pane
	chmod +x /usr/local/bin/tmux-vim-select-pane
