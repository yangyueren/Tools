" F9 is to normal paste
" set mouse=r is to copy

set ts=4
set expandtab
set autoindent
set shiftwidth=4
set backspace=2
set number
set paste

" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'tmux-plugins/vim-tmux-focus-events'
"Plug 'roxma/vim-tmux-clipboard'
call plug#end()


" 启动 vim 时自动打开 NERDTree
" autocmd vimenter * NERDTree
"
" " 只剩 NERDTree 窗口时关闭 vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"
" " 开启/关闭 NERDTree 快捷键
nnoremap <C-T> :NERDTreeToggle<CR>
"
