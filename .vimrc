" Basics
set nocompatible

" Vim sleuth
set shiftwidth=4
set tabstop=4
set noexpandtab

execute pathogen#infect()

set incsearch
set listchars=tab:▸\ ,eol:¬
set number
set ruler
set scrolloff=3
set showcmd
set showmode
set tabpagemax=50
set wildmode=longest:list,full
set wildmenu

" Make sure words contain dash
set iskeyword+=-

set t_Co=256

" Hacks
nnoremap ; :
command MakeAndOpen make! | copen
nnoremap <F9> :MakeAndOpen<CR>
nnoremap <F10> :make!<CR>
nnoremap <F5> :GundoToggle<CR>
nnoremap <F2> :NERDTree<CR>
cmap w!! %!sudo tee > /dev/null %
let NERDTreeIgnore = ['\.pyc$']


" Syntax
filetype plugin indent on
syntax on
colorscheme solarized
set background=light

" Mouse
set mousehide
set mouse=a

" For gVIIM
set guioptions-=m
set guioptions-=T
set guifont=Monospace\ 9

" PageUp and PageDown Behavior
nnoremap <silent> <PageUp> <C-U>
vnoremap <silent> <PageUp> <C-U>
inoremap <silent> <PageUp> <C-\><C-O><C-U>
nnoremap <silent> <PageDown> <C-D>
vnoremap <silent> <PageDown> <C-D>
inoremap <silent> <PageDown> <C-\><C-O><C-D>

nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>p "+p
vnoremap <leader>y "+y
inoremap <leader>y <esc>"+ya
inoremap <leader>p <esc>"+pa

nnoremap j gj
nnoremap k gk

vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Autocorrect
iabbrev hte the
iabbrev teh the
iabbrev adn and

" Eh?
set modelines=0
set autoindent
set smartindent
set indentexpr=
set backspace=indent,eol,start

" Support for go
autocmd BufNewFile,BufRead *.go set filetype=go
" Support for markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Support for horn
autocmd BufNewFile,BufRead *.hn set filetype=horn

" Screw temp files
silent !mkdir -p ~/.vim/backup ~/.vim/swap >/dev/null 2>&1
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
