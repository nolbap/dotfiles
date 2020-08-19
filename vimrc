call plug#begin('~/.vim/plugged')
 
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/rust-lang/rust.vim' 
Plug 'https://github.com/tpope/vim-dispatch'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'https://github.com/majutsushi/tagbar'

call plug#end()

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-t> :TagbarToggle<CR>

set nu
