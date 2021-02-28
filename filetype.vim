if did_filetype()==1 | finish | endif

au BufRead,BufNewFile *.lorc  set filetype=lorc|call GetKeywords()
au BufNewFile,BufRead *.orc,*.csd,*.sco call GetKeywords()|set filetype=orc
au BufNewFile,BufRead *.sc,*.scd  set filetype=supercollider

function! GetKeywords()
	if !bufexists("/home/es/.vim/syntax/csound_opcodes.vim")
		let cmd = "new \| e ~/.vim/syntax/csound_opcodes.vim\| hide"
		silent exec cmd
	endif
endfunction

