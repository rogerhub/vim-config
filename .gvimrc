colorscheme codeschool
set vb
set t_vb=

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 16, 8)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 16, 8)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 16, 16)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 16, 16)<CR>
