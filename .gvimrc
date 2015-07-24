colorscheme codeschool
set vb
set t_vb=

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 4, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 4, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 4, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 4, 4)<CR>
