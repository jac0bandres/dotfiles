syntax enable
set nowrap

augroup filetypedetect
	autocmd!
	autocmd BufNewFile,BufRead *.js setlocal syntax=javascript
	autocmd BufNewFile,BufRead *.js setlocal filetype=javascript
augroup END
