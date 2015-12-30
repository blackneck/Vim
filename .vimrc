execute pathogen#infect()

syntax on

filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set number

colo elflord

set background=dark 

nnoremap <silent> <C-B> :NERDTreeToggle<CR>
inoremap <silent> <C-B> <Esc>:NERDTreeToggle<CR>

nnoremap <C-t> :vsp<CR><C-W>
inoremap <C-t> <Esc>:vsp<CR>
