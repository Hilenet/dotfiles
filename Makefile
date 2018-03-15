DOTFILES_EXCLUDES := .DS_Store .git .gitignore
DOTFILES_TARGET   := $(wildcard .??*)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))


deploy: # link dotfiles in repo
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

init: deploy #setup env setting
	@$(foreach val, $(wildcard ./etc/init/*.sh), bash $(val);)
