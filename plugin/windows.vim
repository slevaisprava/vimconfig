function WinNextChangeSize()
	let current = bufnr()
	let buflst = tabpagebuflist()
	let bufcnt = len(buflst)
	
	if bufcnt <= 3 && &columns >= 160 | return | endif

	let mn = (&columns-82)/(bufcnt-1)
	
	call win_gotoid(bufwinid(current))
	vertical resize 82
	for b in buflst
		if b != current
			call win_gotoid(bufwinid(b))
			exe "vertical resize " . mn
		endif
	endfor
	call win_gotoid(bufwinid(current))
endfunction
map <silent> <M-j> <C-W>W:call WinNextChangeSize()<cr>
map <silent> <M-k> <C-W>w:call WinNextChangeSize()<cr>

function WindowSwitch()
	if winwidth(0) != 82
		call  WinNextChangeSize()
	else
		exe "normal \<C-W>="
	endif
endfunction 
map <silent> <M-w> :silent call WindowSwitch()<cr>

map <silent> <M-h> :tabprevious<cr>
map <silent> <M-l> :tabnext<cr>

map <C-Tab> <C-w>w<C-w><bar><C-w>_ze
map <C-S-Tab> <C-w>W<C-w><bar><C-w>_ze
imap <C-Tab> <Esc><C-w>w<C-w><bar><C-w>_ze
imap <C-S-Tab> <Esc><C-w>W<C-w><bar><C-w>_ze
map <C-Return> <C-W><bar><C-W>_ ze

map  <silent> <C-j> <C-W>j<C-W>_ze
map  <silent> <C-k> <C-W>k<C-W>_ze
map  <silent> <c-h> <c-w>h<c-w><bar>ze
map  <silent> <c-l> <c-w>l<c-w><bar>ze
imap <silent> <C-j> <Esc><C-W>j<C-W>_ze
imap <silent> <C-k> <Esc><C-W>k<C-W>_ze
imap <silent> <c-h> <Esc><c-w>h<c-w><bar>ze
imap <silent> <c-l> <Esc><c-w>l<c-w><bar>ze
