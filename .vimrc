" Basics
set nocompatible
set shiftwidth=4 tabstop=4 expandtab
set textwidth=100
set formatoptions-=t formatoptions-=c formatoptions+=r formatoptions+=j
set listchars=tab:▸\ ,eol:\ 
set fillchars=vert:\ ,fold:-
set nowrap nolist nonumber showcmd showmode ruler rulerformat=%=%l,%c
set noerrorbells novisualbell
set scrolloff=0 tabpagemax=50 synmaxcol=4096
set wildmenu wildmode=longest:list,full
set linebreak showbreak=·
set tags=./tags,tags;/
set incsearch ignorecase nosmartcase gdefault hlsearch
set virtualedit=onemore
set complete=.,w,b,u,i completeopt=longest,menuone
set t_Co=256

if exists("&breakindent")
  set breakindent
endif

highlight ExtraWhitespace ctermbg = blue

" Comma mode
command CommaMode set timeoutlen=31415926
command CommaModeCancelled set timeoutlen=1000
nnoremap <script> , :CommaMode<CR><SID>comma
nnoremap <script> <SID>comma, :CommaMode<CR><SID>comma
nnoremap <script> <SID>comma1 :set wrap!<CR><SID>comma
nnoremap <script> <SID>commaL :set list!<CR><SID>comma
nnoremap <script> <SID>commax :CommaModeCancelled<CR>:x<CR>
nnoremap <script> <SID>commaw :CommaModeCancelled<CR>:w<CR>
nnoremap <script> <SID>commaq :q<CR><SID>comma
nnoremap <script> <SID>commav :vsp<CR><SID>comma
nnoremap <script> <SID>commas :sp<CR><SID>comma
nnoremap <script> <SID>commat :tabnew<CR><SID>comma
nnoremap <script> <SID>commab :CommaModeCancelled<CR>:CtrlPBuffer<CR>
nnoremap <script> <SID>commar :CommaModeCancelled<CR>:CtrlPMRU<CR>
nnoremap <script> <SID>commac :CommaModeCancelled<CR>:cd 
nnoremap <script> <SID>commaf :CommaModeCancelled<CR>:set ft=
nnoremap <script> <SID>commaU :CommaModeCancelled<CR>:set number!<CR>
nnoremap <script> <SID>commaT :CommaModeCancelled<CR>:ToggleWhitespace<CR>
nnoremap <script> <SID>commaH :CommaModeCancelled<CR>:Rooter<CR>
nnoremap <script> <SID>commaE :CommaModeCancelled<CR>:enew<CR>
nnoremap <script> <silent> <SID>comma :CommaModeCancelled<CR>

" Commands
command JsonPP %!python -m json.tool
command XmlPP %!xmllint --format -
command HtmlPP %!tidy
command Ctags set tags+=/usr/include/tags tags+=/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers/tags
command W w
cabbrev man <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'help' : 'man')<CR>
cabbrev mc <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'MultipleCursorsFind' : 'mc')<CR>
cabbrev E <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'e' : 'E')<CR>
cabbrev Q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'q' : 'Q')<CR>
cabbrev Qa <c-r>=(getcmdtype()==':' &&getcmdpos()==1 ? 'qa' : 'Qa')<CR>
cabbrev X <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'x' : 'X')<CR>
cabbrev Set <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'set' : 'Set')<CR>
cabbrev W <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'w' : 'W')<CR>

" Silence
map . <Nop>
map Q <Nop>
map q: <Nop>
map q/ <Nop>
map q? <Nop>
map K <Nop>
map & <Nop>
map <C-c> <silent> <C-c>

nnoremap ~ .
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

nnoremap ` :FileBeagleBufferDir<CR>
let g:filebeagle_hijack_netrw = 1
let g:filebeagle_buffer_normal_key_maps = {'FileBeagleBufferFocusOnParent': '`'}
let g:filebeagle_buftype = "nowrite"
let g:filebeagle_show_hidden = 0
autocmd User FileBeagleReadPost set buftype= nomodified
set wildignore=.git,.svn,.hg,.bundle,*.DS_Store,*.pyc,*.exe,*.so,*.dll,*.class,*.aux,*.log,*.result,*.output,*.pdf

" vim-multiple-cursors
let g:multi_cursor_exit_from_insert_mode = 0

" vim-rooter
let g:rooter_disable_map = 1
let g:rooter_manual_only = 1

" CtrlP
let g:ctrlp_working_path_mode = 'raw'
let g:ctrlp_root_markers = ['.projroot']
let g:ctrlp_custom_ignore = {}
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = ''
let g:ctrlp_max_files = 0
let g:ctrlp_mruf_max = 65535
let g:ctrlp_clear_cache_on_exit = 0
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

" Ultisnips with alt+S on OS X
let g:UltiSnipsExpandTrigger="ß"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" For GUI integration
set guioptions-=m go-=T go-=R go-=r go-=l go-=L go-=b go+=c
set guifont=Ubuntu\ Mono\ 13,Menlo\ Regular:h12
set linespace=0
set mousehide mouse=a

" Up and down
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <expr> <Down> pumvisible() ? '<C-n>' : '<C-o>gj'
inoremap <expr> <Up> pumvisible() ? '<C-p>' : '<C-o>gk'

" Tab key
inoremap <expr><silent> <Tab> pumvisible() ? '<C-n>' : col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w' ? '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>' : '<Tab>'
inoremap <expr><silent> <S-Tab> pumvisible() ? '<C-p>' : '<Tab>'
inoremap <expr><silent> <CR> pumvisible() ? '<C-y>' : '<C-g>u<CR>'

" Select just pasted text
nnoremap gp `[v`]

" Eh?
set modelines=5
set indentexpr=
set backspace=indent,eol,start

set cinoptions=l1 cinkeys-=0# indentkeys-=0#

" I don't write or edit scripts for /bin/sh...
let g:is_bash=1

" Support for C
autocmd FileType c,cpp set cindent
" Support for go
autocmd BufNewFile,BufRead *.go set filetype=go
" Support for markdown
autocmd BufNewFile,BufRead *.md set filetype=ghmarkdown
" Support for my notes (so I can read them on my phone too)
autocmd BufNewFile,BufRead */Dropbox/Notes/*.txt set filetype=ghmarkdown
" Support for horn
autocmd BufNewFile,BufRead *.hn set filetype=horn
" Support for cppcms tmpl
autocmd BufNewFile,BufRead *.tmpl set filetype=tmpl
" Support for Laravel Blade
autocmd BufNewFile,BufRead *.blade.php set filetype=blade
" Support for tex
autocmd BufNewFile,BufRead *.tex set filetype=tex
" Support for Julia
autocmd BufNewFile,BufRead *.jl set filetype=julia
" Support for Coffee-script
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee
autocmd BufNewFile,BufRead *.coffeekup,*.ck set filetype=coffee
autocmd BufNewFile,BufRead *._coffee set filetype=coffee
" Support for Puppet
autocmd BufNewFile,BufRead *.pp set filetype=puppet
" Support for fish
autocmd BufRead,BufNewFile,BufEnter config.fish set filetype=fish
" Support for vagrant
autocmd BufRead,BufNewFile,BufEnter Vagrantfile set filetype=ruby


" Auto comment format
autocmd FileType puppet,fish,julia,coffee set commentstring=#\ %s

" Don't ask me to save things read from stdin
autocmd StdinReadPost * set nomodified
autocmd StdinReadPre * set filetype= nowrap

" Screw temp files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

if has('persistent_undo')
  set undolevels=5000
  set undodir=~/.vim/undo//
  set undofile
endif

" Make sure words contain dash in CSS, SASS, HTML, etc
autocmd FileType htmldjango,html,css,sass,javascript set iskeyword+=-

" Syntax
filetype plugin indent on
syntax on

execute pathogen#infect()
