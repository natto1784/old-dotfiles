source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/colors.vim
"source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/themes/customline.vim
"source $HOME/.config/plug-config/template.vim
source $HOME/.config/nvim/cp.vim
source $HOME/.config/nvim/plug-config/emmet.vim
source $HOME/.config/nvim/plug-config/jsintellisense.vim
source $HOME/.config/nvim/plug-config/vim-closetag.vim
source $HOME/.config/nvim/plug-config/tagalong.vim
source $HOME/.config/nvim/plug-config/matchtag.vim
source $HOME/.config/nvim/plug-config/sass-compile.vim


set shell=/bin/sh
lua require'plug-colorizer'

au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css
":autocmd BufWritePost *.scss !sass % %:r.css
