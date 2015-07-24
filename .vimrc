" Basics
set nocompatible

if $SHELL =~ 'bin/fish'
  set shell=/bin/bash
endif

" Vim sleuth
set shiftwidth=4
set tabstop=4
set expandtab

set textwidth=100
" Disable automatic text wrapping within text (t) and comments (c)
set formatoptions-=t
set formatoptions-=c
" Turn on insertion of comment leader when pressing <Enter> in insert mode
set formatoptions+=r
" Turn on removal of comment leader when joining comment lines
set formatoptions+=j
set incsearch
set listchars=tab:▸\ ,eol:\ 
set nolist
set nonumber
set ruler
set rulerformat=%=%l,%c
set scrolloff=0
set showcmd
set noshowmode
set tabpagemax=50
set wildmode=longest:list,full
set wildmenu
set wrap
set linebreak
set showbreak=\:\:\:
if exists("&breakindent")
  " oh my god fuck yes
  set breakindent
endif
set synmaxcol=0
set tags=./tags,tags;/
set noerrorbells
set novisualbell
set ignorecase
set nosmartcase
set gdefault
set hlsearch
set virtualedit=onemore
set complete=.,w,b,u,i
set fillchars=vert:\ ,fold:-

" Set number of colors to 256
set t_Co=256

highlight ExtraWhitespace ctermbg = blue

" Comma mode
command CommaMode set timeoutlen=86400000
command CommaModeCancelled set timeoutlen=1000
nnoremap <script> , :CommaMode<CR><SID>comma
nnoremap <script> <SID>comma, :CommaMode<CR><SID>comma
nnoremap <script> <SID>comma1 :set wrap!<CR><SID>comma
nnoremap <script> <SID>comma0 :Text<CR><SID>comma
nnoremap <script> <SID>commaL :set list!<CR><SID>comma
nnoremap <script> <silent> <SID>commaE :CommaModeCancelled<CR>0f{"syi{o<ESC>C\end{<ESC>"spA}<ESC>O
nnoremap <script> <SID>commax :CommaModeCancelled<CR>:x<CR>
nnoremap <script> <SID>commaq :q<CR><SID>comma
nnoremap <script> <SID>commaw :CommaModeCancelled<CR>:w<CR>
nnoremap <script> <SID>commav :vsp<CR><SID>comma
nnoremap <script> <SID>commas :sp<CR><SID>comma
nnoremap <script> <SID>commat :tabnew<CR><SID>comma
nnoremap <script> <SID>commab :CommaModeCancelled<CR>:CtrlPBuffer<CR>
nnoremap <script> <SID>commar :CommaModeCancelled<CR>:CtrlPMRU<CR>
nnoremap <script> <SID>commad :CommaModeCancelled<CR>:ls<CR>:bd
nnoremap <script> <SID>commac :CommaModeCancelled<CR>:cd 
nnoremap <script> <SID>commaf :CommaModeCancelled<CR>:set ft=
nnoremap <script> <SID>commaU :CommaModeCancelled<CR>:set number!<CR>
nnoremap <script> <SID>commaT :CommaModeCancelled<CR>:ToggleWhitespace<CR>
nnoremap <script> <silent> <SID>comma :CommaModeCancelled<CR>

nnoremap <script> <leader>y "+y
vnoremap <script> <leader>y "+y

nnoremap <C-c> <silent> <C-c>

" Commands
command Text set sw=2 ts=2 et cc=101 fo+=t fo+=c spell
command NoText set cc=0 tw=0 nospell
command JsonPP %!python -m json.tool
command XmlPP %!xmllint --format -
command HtmlPP %!tidy
command Ctags set tags+=/usr/include/tags tags+=/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers/tags
command W w
cabbrev man <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'help' : 'man')<CR>
cabbrev mc <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'MultipleCursorsFind' : 'mc')<CR>
cabbrev E <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'e' : 'E')<CR>
cabbrev Q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'q' : 'Q')<CR>
cabbrev Qa <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'qa' : 'Qa')<CR>
cabbrev X <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'x' : 'X')<CR>
cabbrev Set <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'set' : 'Set')<CR>
cabbrev W <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'w' : 'W')<CR>

" Hacks
map . <Nop>
nnoremap ~ .
map K <Plug>(Man)
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
vnoremap ; :
nnoremap ' ;
vnoremap ' ;
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap ∆ <C-W><S-J>
nnoremap ˚ <C-W><S-K>
nnoremap ˙ <C-W><S-H>
nnoremap ¬ <C-W><S-L>
" OS X: alt+o
nnoremap ø o<ESC>S
" OS X: alt+shift+o
nnoremap Ø O<ESC>S
nnoremap <silent> <Space> :redraw<CR>:noh<CR>

" Taken from https://github.com/tpope/vim-vinegar/blob/master/plugin/vinegar.vim
let s:netrw_up = ''
autocmd FileType netrw call s:setup_vinegar()
function! s:setup_vinegar() abort
  if empty(s:netrw_up)
    " save netrw mapping
    let s:netrw_up = maparg('-', 'n')
    " saved string is like this:
    " :exe "norm! 0"|call netrw#LocalBrowseCheck(<SNR>172_NetrwBrowseChgDir(1,'../'))<CR>
    " remove <CR> at the end (otherwise raises "E488: Trailing characters")
    let s:netrw_up = strpart(s:netrw_up, 0, strlen(s:netrw_up)-4)
  endif
endfunction

function! s:seek(file)
  let pattern = '^\%(| \)*'.escape(a:file, '.*[]~\').'[/*|@=]\=\%($\|\t\)'
  call search(pattern, 'wc')
  return pattern
endfunction

function! s:opendir(cmd)
  if &filetype ==# 'netrw'
    let currdir = fnamemodify(b:netrw_curdir, ':t')
    execute s:netrw_up
    call s:seek(currdir)
  else
    if empty(expand('%'))
      execute a:cmd '.'
    else
      execute a:cmd '%:h/'
      call s:seek(expand('#:t'))
    endif
  endif
endfunction

nnoremap ` :call <SID>opendir('edit')<CR>
let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_sort_sequence = ''
let g:netrw_mousemaps = 0
let g:netrw_list_hide = '\(^\(./\|\.git/\|\.svn/\|\.hg/\|\.bundle/\|\.DS_Store\)\|\.pyc\)$'

" NERDTree
" let NERDTreeIgnore = [
"   \ '\.pyc$',
"   \ '\.class$',
"   \ '\.o$',
"   \ '\.exe$',
"   \ '\.so$',
"   \ '\.dll$',
"   \ '\.aux$',
"   \ '\.log$',
"   \ '\.result$',
"   \ '\.output$',
"   \ '\.pdf$'
"   \ ]
" let NERDTreeMinimalUI = 1

" CTRL P
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.projroot']
let g:ctrlp_custom_ignore = {}
let g:ctrlp_cmd = 'CtrlP'
" Disable ctrlp switch buffer
let g:ctrlp_switch_buffer = ''
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_match_func = { 'match': 'matcher#cmatch' }

if executable("ag")
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
        \ --ignore ".git"
        \ --ignore ".svn"
        \ --ignore ".hg"
        \ --ignore ".bundle"
        \ --ignore ".DS_Store"
        \ --ignore "*.pyc"
        \ --ignore "*.exe"
        \ --ignore "*.so"
        \ --ignore "*.dll"
        \ --ignore "*.class"
        \ --ignore "*.aux"
        \ --ignore "*.log"
        \ --ignore "*.result"
        \ --ignore "*.output"
        \ --ignore "*.pdf"
        \ -g ""'
endif

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
set linespace=0

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
set indentexpr=
set backspace=indent,eol,start

set cinkeys-=0#
set indentkeys-=0#

" HTML Indentation
" let g:html_indent_inctags="head,html,body,p,head,table,tbody,div,script"
" let g:html_indent_script1="inc"
" let g:html_indent_style1="inc"

" I don't write or edit scripts for /bin/sh...
let g:is_bash=1

set nocindent
autocmd FileType c,cpp set cindent

" Support for go
autocmd BufNewFile,BufRead *.go set filetype=go
" Support for markdown
autocmd BufNewFile,BufRead *.md set filetype=ghmarkdown
" Support for horn
autocmd BufNewFile,BufRead *.hn set filetype=horn
" Support for CPPCMS tmpl
autocmd BufNewFile,BufRead *.tmpl set filetype=tmpl
" Support for Laravel Blade
autocmd BufNewFile,BufRead *.blade.php set filetype=blade
" Support for tex (what's plaintex?)
autocmd BufNewFile,BufRead *.tex set filetype=tex
" Julia
autocmd BufNewFile,BufRead *.jl set filetype=julia

" Auto comment format
autocmd FileType puppet,fish,julia set commentstring=#\ %s

" Don't ask me to save things read from stdin
autocmd StdinReadPost * set nomodified
autocmd StdinReadPre * set filetype= nowrap

" Screw temp files
silent !mkdir -p ~/.vim/backup ~/.vim/swap >/dev/null 2>&1
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

autocmd BufRead,BufNewFile,BufEnter config.fish set filetype=fish

" Make sure words contain dash in CSS, SASS, HTML, etc
autocmd FileType html,css,sass,javascript set iskeyword+=-

autocmd BufRead,BufNewFile,BufEnter Vagrantfile set filetype=ruby

" Syntax
filetype plugin indent on
syntax on
" colorscheme solarized
set background=light

execute pathogen#infect()
