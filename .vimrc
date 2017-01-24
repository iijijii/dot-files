set backspace=2
set cursorline
set clipboard+=unnamed,autoselect
set encoding=utf-8
set fileencoding=utf-8
set hlsearch
set incsearch
set modelines=0
set number
set noerrorbells
set nrformats=
set shiftwidth=2
set tabstop=2
set visualbell t_vb=
set noerrorbells

if &compatible
	set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('mattn/emmet-vim')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise')
call dein#add('nelstrom/vim-visual-star-search')
call dein#add('scrooloose/syntastic')
call dein#add('tpope/vim-rails')
call dein#end()

let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes' : ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

filetype plugin indent on     " required!
filetype indent on

syntax on

imap <C-j> <Esc>

inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>

" Put search result word at the center of the screen
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

augroup MyXML
	autocmd!
	autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
	autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
