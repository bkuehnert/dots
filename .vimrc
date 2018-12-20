execute pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=16
set number
set relativenumber
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set autoindent

"vimlatexlivepreview
"let g:livepreview_previewer = 'mupdf.inotify'
let g:livepreview_previewer = 'zathura'

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"ycm + supertab config
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"autopairs
au Filetype tex let b:AutoPairs = {}

"function key mapping
noremap <F2> :update<CR>
inoremap <F2> <Esc>:update<CR>a
map <F3> ::LLPStartPreview<CR>

