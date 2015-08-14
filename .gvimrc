colorscheme codeschool
set vb
set t_vb=

nnoremap <expr><silent> <c-u> winheight(0) < 16 ? '<c-u>' : ':call smooth_scroll#up(&scroll, 16, 8)<CR>'
nnoremap <expr><silent> <c-d> winheight(0) < 16 ? '<c-d>' : ':call smooth_scroll#down(&scroll, 16, 8)<CR>'
nnoremap <expr><silent> <c-b> winheight(0) < 16 ? '<c-b>' : ':call smooth_scroll#up(&scroll*2, 16, 16)<CR>'
nnoremap <expr><silent> <c-f> winheight(0) < 16 ? '<c-f>' : ':call smooth_scroll#down(&scroll*2, 16, 16)<CR>'
