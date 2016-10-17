"editing
syntax on 
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 
set wrap
set nu
set nocp "comba mode
set hidden 
set hlsearch!
set relativenumber
set laststatus=2

set noeb vb t_vb=
au GUIEnter * set vb t_vb=

set mouse=a
set noautochdir
set omnifunc=syntaxcomplete#Complete
nnoremap <F3> :set hlsearch! <CR>

filetype plugin indent on

"custom commands
command Hex execute "%!xxd"
command E execute "e"
command! Eclipse exec "!/usr/lib/eclipse/eclimd &"

"Brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
imap jj (
imap kk {<CR><Esc>bo
imap jk {
imap kl [
map fj <Esc>f(
map fk <Esc>f{o

nmap ff /

vnoremap _( <Esc>`>a)<Esc>`<i(<Esc> 
vnoremap _{ <Esc>`>a}<Esc>`<i{<Esc>
vnoremap _" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap _[ <Esc>`>a]<Esc>`<i[<Esc>

"plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'cespare/vim-toml', {'for': 'toml'}
call plug#end()

"git fugitive config
nmap <F7> :Gstatus <CR>
nmap <silent><F8> :Gcommit <CR>
nmap <silent> <F12> :sh <CR>
