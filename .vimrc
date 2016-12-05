" Using Plugins:
" NERDTree, vim-javascript, vim-jsx, vim-gitgutter, syntastic, CtrlP, vim-commentary
" npm global install eslint, eslint-plugin-react, eslint-plugin-import
" No VI compatible mode
set nocompatible

" Backspace works as expected
set backspace=indent,eol,start

" Use pathogen if installed
silent! execute pathogen#infect()

" Syntax highlighting
syntax on

" Filetype detection and indentation
filetype plugin indent on

" Use line numbers and status line
set number
set laststatus=2
set statusline=%f

" Set colorscheme gruvbox if it exists
set background=dark
silent! colorscheme gruvbox

" Tabs set to 2 spaces
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Semicolons work like colons for commands
nnoremap ; :
vnoremap ; :

" Home row shortcut for Normal mode
inoremap jf <ESC>

" Automatically remove trailing whitespace on save
autocmd BufWritePre * :%s/ \+$//ge

" Use system clipboard for default yank and paste
set clipboard=unnamed

" Set search options
set incsearch
set hlsearch
set ignorecase
set smartcase
set gdefault
nmap <silent> ,/ :noh<CR>

" Turn off Vim backup and swap files and autoload changes
set nobackup
set noswapfile
set autoread

" Movement mappings
nnoremap j gj
nnoremap k gk
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <CR> G
nnoremap <BS> gg
nnoremap B ^
nnoremap E $

" Move lines and blocks up and down
nnoremap <S-u> :m .+1<CR>==
nnoremap <S-i> :m .-2<CR>==
vnoremap <S-u> :m '>+1<CR>gv=gv
vnoremap <S-i> :m '<-2<CR>gv=gv

" Leader Mappings
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>a :wa<CR>
nnoremap <Leader>x :xa<CR>
nmap <Leader><Leader> V
nnoremap <Leader>v :vsplit<CR>

" NERDTree Config
map <C-\> :NERDTreeToggle<CR>
let NERDTreeIgnore=['node_modules$[[dir]]', '.git$[[dir]]', '\.pyc$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Javascript syntax config
let g:jsx_ext_required = 0

" gitgutter update time config
set updatetime=250

" Syntastic config
set statusline+=%=
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_loc_list_height = 3

" CtrlP Config
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
    \ },
  \ 'fallback': 'find %s -type f'
  \ }
