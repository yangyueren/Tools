# F9 is to normal paste
# set mouse=r is to copy

set ts=4
set expandtab
set autoindent
set shiftwidth=4
set backspace=2
set number

set pastetoggle=<F9>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  set mouse=a
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'


call plug#end()
