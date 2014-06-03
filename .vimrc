" Basics
set nocompatible

if $SHELL =~ 'bin/fish'
  set shell=/bin/zsh
endif

" Vim sleuth
set shiftwidth=4
set tabstop=4
set noexpandtab

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
command Text set sw=2 ts=2 et cc=81 tw=80 spell
command W w
nnoremap <F12> :Text<CR>
" Note the space below!
nnoremap <F3> :q<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>v :vsp<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>l :set list!<CR>
nnoremap <leader>n :enew<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F8> :make!<CR>
nnoremap <F9> :Ack 
nnoremap <F5> :GundoToggle<CR>
nnoremap <F2> :NERDTree<CR>
cmap w!! %!sudo tee > /dev/null %
let NERDTreeIgnore = ['\.pyc$','\.class$']
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.projroot']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|class|pyc)$',
  \ }

" Mouse
set mousehide
set mouse=a

" For gVIIM
set guioptions-=m
set guioptions-=T
set guioptions-=R
set guioptions-=r
set guioptions-=l
set guioptions-=L
set guioptions-=b
set guioptions+=c
set guifont=Ubuntu\ Mono\ 13,Menlo\ Regular:h14

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
" inoremap <leader>y <esc>"+ya
" inoremap <leader>p <esc>"+pa

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

" HTML Indentation
let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

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

execute pathogen#infect()

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<leader>a'

" Syntax
filetype plugin indent on
syntax on
" colorscheme solarized
set background=light

