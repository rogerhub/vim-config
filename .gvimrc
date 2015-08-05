colorscheme codeschool
set vb
set t_vb=

nnoremap <silent> <c-u> :call smooth_scroll#up(&scroll, 16, 8)<CR>
nnoremap <silent> <c-d> :call smooth_scroll#down(&scroll, 16, 8)<CR>
nnoremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 16, 16)<CR>
nnoremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 16, 16)<CR>
