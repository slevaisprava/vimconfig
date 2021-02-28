
function! MyTabLine()
	let s = ''
	for i in range(tabpagenr('$'))
		if i + 1 == tabpagenr()
			let s .= '%#TabLineSel#'
    		else
      			let s .= '%#TabLine#'
		endif
		"let s .= '[%{MyTabLabel(' . (i + 1) . ')}]'
		let s .= '〇'
		"let s .= '[●]'
 	 endfor
	let s .= '%#TabLineFill#'
  	"return "%=".s tabs at rights
  	return s
endfunction

"function! MyTabLabel(n)
"	let label = ''
"	let buflist = tabpagebuflist(a:n)
"	"
"	"let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')
"	"if label == ''
"	"	let label = 'No Name'
"	"endif
"	"let label =  a:n . ':' . label
"
"	let label =  a:n 
"
"	for i in range(len(buflist))
"		if getbufvar(buflist[i], "&modified")
"			let label = '+' . label
"			break
"		endif
"	endfor
"	return label
"endfunction

hi TabLine gui=bold  guifg=gray60 guibg=gray10 gui=bold cterm=None
hi TabLineSel gui=bold guibg=gray10 guifg=Orange2 gui=bold
hi TabLineFill guifg=Grey25 gui=NONE
set tabline=%!MyTabLine()
