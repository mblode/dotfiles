set runtimepath+=~/dotfiles/vim_runtime

source ~/dotfiles/vim_runtime/vimrcs/basic.vim
source ~/dotfiles/vim_runtime/vimrcs/filetypes.vim
source ~/dotfiles/vim_runtime/vimrcs/plugins_config.vim
source ~/dotfiles/vim_runtime/vimrcs/extended.vim

try
source ~/dotfiles/vim_runtime/my_configs.vim
catch
endtry
