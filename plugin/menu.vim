
map  \f :popup File<cr>
map  \e :popup Edit<cr>
map  \t :popup Tools<cr>
map  \h :popup Help<cr> 
map  \s :popup Scripts<cr>
map  \w :popup Window<cr>
map  \b :popup Buffers<cr>


amenu <silent> Scripts.Session_News		:silent! exec "so  /home/es/.vim/defsessions/vimru.vim"<cr>
amenu <silent> Scripts.Session_Vimcs		:silent! exec "so  /home/es/.vim/defsessions/vimcs.vim"<cr>
amenu <silent> Scripts.Session_VimTape		:silent! exec "so  /home/es/.vim/defsessions/VimTape.vim"<cr>
amenu <silent> Scripts.Session_Csound		:silent! exec "so  /home/es/.vim/defsessions/csound.vim"<cr>
amenu <silent> Scripts.Session_Lorc		:silent! exec "so  /home/es/.vim/defsessions/lorc.vim"<cr>
amenu Scripts.-sep-			       	:    
amenu <silent> Scripts.Sesion_Close		:silent! exec "bufdo! bd! \| bufdo! bd!"<cr>
amenu Scripts.Session_View			:echo v:this_session<CR>
