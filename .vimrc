" Basics
set nocompatible

if $SHELL =~ 'bin/fish'
  set shell=/bin/bash
endif

" Vim sleuth
set shiftwidth=4
set tabstop=4
set expandtab

set incsearch
set listchars=tab:▸\ ,eol:¬
set nonumber
set ruler
set scrolloff=0
set showcmd
set noshowmode
set tabpagemax=50
set wildmode=longest:list,full
set wildmenu
set wrap
set lbr
set showbreak=...\ 
if exists("&breakindent")
  " oh my god fuck yes
  set breakindent
endif
set synmaxcol=0
set tags=./tags,tags;/
set noeb
set novb
set ignorecase
set nosmartcase
set gdefault
set hlsearch

" Set number of colors to 256
set t_Co=256

highlight ExtraWhitespace ctermbg = blue

" tinymode.vim
nmap , :set timeoutlen=86400000<CR><SID>ldr
vmap , :set timeoutlen=86400000<CR><SID>ldr
nn <script> <SID>ldr, <SID>ldr
vn <script> <SID>ldr, <SID>ldr
nn <script> <SID>ldr1 :set wrap!<CR><SID>ldr
vn <script> <SID>ldr1 :set wrap!<CR><SID>ldr
nn <script> <SID>ldr2 :NERDTreeToggle<CR><SID>ldr
vn <script> <SID>ldr2 :NERDTreeToggle<CR><SID>ldr
nn <script> <SID>ldr0 :Text<CR><SID>ldr
vn <script> <SID>ldr0 :Text<CR><SID>ldr
nn <script> <SID>ldrL :set list!<CR><SID>ldr
vn <script> <SID>ldrL :set list!<CR><SID>ldr
nn <script> <SID>ldrx :set timeoutlen=1000<CR>:x<CR>
vn <script> <SID>ldrx :set timeoutlen=1000<CR>:x<CR>
nn <script> <SID>ldrq :q<CR><SID>ldr
vn <script> <SID>ldrq :q<CR><SID>ldr
nn <script> <SID>ldrw :set timeoutlen=1000<CR>:w<CR>
vn <script> <SID>ldrw :set timeoutlen=1000<CR>:w<CR>
nn <script> <SID>ldrv :vsp<CR><SID>ldr
vn <script> <SID>ldrv :vsp<CR><SID>ldr
nn <script> <SID>ldrs :sp<CR><SID>ldr
vn <script> <SID>ldrs :sp<CR><SID>ldr
nn <script> <SID>ldrt :tabnew<CR><SID>ldr
vn <script> <SID>ldrt :tabnew<CR><SID>ldr
nn <script> <SID>ldrb :set timeoutlen=1000<CR>:CtrlPBuffer<CR>
vn <script> <SID>ldrb :set timeoutlen=1000<CR>:CtrlPBuffer<CR>
nn <script> <SID>ldrd :set timeoutlen=1000<CR>:ls<CR>:bd
vn <script> <SID>ldrd :set timeoutlen=1000<CR>:ls<CR>:bd
nn <script> <SID>ldrc :set timeoutlen=1000<CR>:cd 
vn <script> <SID>ldrc :set timeoutlen=1000<CR>:cd 
nn <script> <SID>ldrn :set timeoutlen=1000<CR>99<C-W>h
vn <script> <SID>ldrn :set timeoutlen=1000<CR>99<C-W>h
nn <script> <SID>ldrf :set timeoutlen=1000<CR>:set ft=
vn <script> <SID>ldrf :set timeoutlen=1000<CR>:set ft=
nn <script> <SID>ldrU :set timeoutlen=1000<CR>:set number!<CR>
vn <script> <SID>ldrU :set timeoutlen=1000<CR>:set number!<CR>
nn <script> <SID>ldrM :set timeoutlen=1000<CR>:CtrlPMixed<CR>
vn <script> <SID>ldrM :set timeoutlen=1000<CR>:CtrlPMixed<CR>
nmap <SID>ldr :set timeoutlen=1000<CR>
vmap <SID>ldr :set timeoutlen=1000<CR>

" Commands
command Text set sw=2 ts=2 et cc=81 tw=80 spell
command Ctags set tags+=/usr/include/tags tags+=/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers/tags
command W w
cabbrev man help
cabbrev mc MultipleCursorsFind
cabbrev E e
cabbrev Q q
cabbrev Qa qa
cabbrev X x
cabbrev Set set

" Hacks
" map . <Nop>
map K <Nop>
map Q <Nop>
map q: <Nop>
map q/ <Nop>
map q? <Nop>
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap ; :
nnoremap ' ;
vnoremap ' ;
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Space> :noh<CR>

" NERDTree
let NERDTreeIgnore = ['\.pyc$','\.class$','\.o$']

" CTRL P
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.projroot']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|bundle)$',
  \ 'file': '\v\.(exe|so|dll|class|pyc)$',
  \ }
let g:ctrlp_cmd = 'CtrlP'
" Disable ctrlp switch buffer
let g:ctrlp_switch_buffer = ''

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
set guifont=Ubuntu\ Mono\ 13,Menlo\ Regular:h12

" PageUp and PageDown Behavior
nnoremap <silent> <PageUp> <C-U>
vnoremap <silent> <PageUp> <C-U>
inoremap <silent> <PageUp> <C-\><C-O><C-U>
nnoremap <silent> <PageDown> <C-D>
vnoremap <silent> <PageDown> <C-D>
inoremap <silent> <PageDown> <C-\><C-O><C-D>

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

" Select just pasted text
nnoremap gp `[v`]

" Eh?
set modelines=0
set autoindent
set cindent
set indentexpr=
set backspace=indent,eol,start

set cinkeys-=0#
set indentkeys-=0#

" HTML Indentation
" let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"
" let g:html_indent_script1="inc"
" let g:html_indent_style1="inc"

" Support for go
autocmd BufNewFile,BufRead *.go set filetype=go
" Support for markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Support for horn
autocmd BufNewFile,BufRead *.hn set filetype=horn
" Support for CPPCMS tmpl
autocmd BufNewFile,BufRead *.tmpl set filetype=tmpl
" Support for Laravel Blade
autocmd BufNewFile,BufRead *.blade.php set filetype=blade
" Support for tex (what's plaintex?)
autocmd BufNewFile,BufRead *.tex set filetype=tex

autocmd FileType puppet,fish set commentstring=#\ %s

" Screw temp files
silent !mkdir -p ~/.vim/backup ~/.vim/swap >/dev/null 2>&1
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

autocmd BufRead,BufNewFile,BufEnter config.fish set filetype=fish

" Make sure words contain dash in CSS, SASS, HTML, etc
autocmd FileType html,css,sass,javascript set iskeyword+=-

" Syntax
filetype plugin indent on
syntax on
" colorscheme solarized
set background=light

execute pathogen#infect()
