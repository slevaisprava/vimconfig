let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.vim/luaserver
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 vt_oscserver.lua
badd +1 vt_serverfunc.lua
badd +8 ~/.vim/ftplugin/orc/map.vim
badd +56 vt_midi.lua
badd +3 vt_data.lua
badd +1 ~/.vim/ftplugin/orc/vt_serverfunc.vim
badd +1 ~/.vim/ftplugin/orc/git_uidmenu.vim
badd +1 ggg.orc
badd +1 woeiur.orc
badd +1 fir.orc
badd +1 rrr.orc
badd +60 baboo.orc
badd +0 lll.orc
argglobal
silent! argdel *
set lines=47 columns=121
winpos 248 32
set stal=2
edit ~/.vim/ftplugin/orc/map.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 0 + 60) / 121)
exe 'vert 2resize ' . ((&columns * 0 + 60) / 121)
exe '3resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 119 + 60) / 121)
exe '4resize ' . ((&lines * 40 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 119 + 60) / 121)
exe '5resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 5resize ' . ((&columns * 119 + 60) / 121)
exe '6resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 6resize ' . ((&columns * 119 + 60) / 121)
exe '7resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 7resize ' . ((&columns * 119 + 60) / 121)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
let s:l = 8 - ((6 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
edit vt_midi.lua
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 56 - ((55 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 0
wincmd w
argglobal
edit ~/.vim/ftplugin/orc/git_uidmenu.vim
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 09|
wincmd w
argglobal
edit ~/.vim/ftplugin/orc/vt_serverfunc.vim
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
21
normal! zo
70
normal! zo
let s:l = 72 - ((71 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
72
let s:c = 117 - ((55 * winwidth(0) + 59) / 119)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 117 . '|'
else
  normal! 0117|
endif
wincmd w
argglobal
edit vt_serverfunc.lua
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
10
normal! zo
73
normal! zo
let s:l = 76 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
76
normal! 0
wincmd w
argglobal
edit vt_oscserver.lua
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
normal! zo
let s:l = 13 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
argglobal
edit vt_data.lua
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 010|
wincmd w
exe 'vert 1resize ' . ((&columns * 0 + 60) / 121)
exe 'vert 2resize ' . ((&columns * 0 + 60) / 121)
exe '3resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 119 + 60) / 121)
exe '4resize ' . ((&lines * 40 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 119 + 60) / 121)
exe '5resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 5resize ' . ((&columns * 119 + 60) / 121)
exe '6resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 6resize ' . ((&columns * 119 + 60) / 121)
exe '7resize ' . ((&lines * 0 + 23) / 47)
exe 'vert 7resize ' . ((&columns * 119 + 60) / 121)
tabedit lll.orc
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
5wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 39 + 23) / 47)
exe '2resize ' . ((&lines * 0 + 23) / 47)
exe '3resize ' . ((&lines * 0 + 23) / 47)
exe '4resize ' . ((&lines * 0 + 23) / 47)
exe '5resize ' . ((&lines * 0 + 23) / 47)
exe '6resize ' . ((&lines * 0 + 23) / 47)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit baboo.orc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit rrr.orc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 32 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
wincmd w
argglobal
edit fir.orc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 71 - ((12 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 0
wincmd w
argglobal
edit woeiur.orc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit ggg.orc
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 39 + 23) / 47)
exe '2resize ' . ((&lines * 0 + 23) / 47)
exe '3resize ' . ((&lines * 0 + 23) / 47)
exe '4resize ' . ((&lines * 0 + 23) / 47)
exe '5resize ' . ((&lines * 0 + 23) / 47)
exe '6resize ' . ((&lines * 0 + 23) / 47)
tabnext 2
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
