execute pathogen#infect()

syntax on
filetype plugin indent on
set number
set relativenumber
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set mouse=a

" GAP config
augroup gap
	au!
	autocmd BufRead,BufNewFile *.g, *.gi, *.gd set filetype=gap comments=s:##\ \,m:\ \,e:##\ \ b:#
augroup END

"vim-latex-live-preview
noremap <F2> :update<CR>
inoremap <F2> <Esc>:update<CR>a
map <F3> ::LLPStartPreview<CR>

"Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"supertab
let g:SuperTabDefaultCompletionType = '<C-n>'

au Filetype tex let b:AutoPairs = {}
