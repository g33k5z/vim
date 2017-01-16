
"
" fumbling towards a golang focused vim config
"
"


" mono font made for go
" TODO: only set this on .go files
set guifont=Go\ Mono:h13


syntax on
filetype plugin indent on  
set number


" unmap arrow keys => plis men no cheat
no <up> <NoP>
no <down> <NoP>
no <left> <NoP>
no <right> <NoP>


ino <up> <NoP>
ino <down> <NoP>
ino <left> <NoP>
ino <right> <NoP>

" TODO: why is this causing ui lag (this + <esc> remapped to save)
" multiple esc key mappings including jj and keyboard mod to remap caps_lock
" map jj <esc>


" add alt ways to :w 
" TODO: diff :update vs :q ?
nmap <leader>w :w<CR>
nmap <esc> :w<CR>

" change default hilight of brackets, easier to see
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" set line numbers to less annoying than default
hi LineNr ctermfg=darkmagenta

" golang syntax highlights (plugin)
execute pathogen#infect()

" Use neocomplete
let g:neocomplete#enable_at_startup = 1 
" Use smartcase
let g:neocomplete#enable_smart_case = 1 
" Set minimum syntax keyword length
let g:neocomplete#sources#syntax#min_keyword_length = 3



au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)


" Open the relevant Godoc for the word under the cursor with <leader>gd or open it vertically with <leader>gv
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)


" Or open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)


" Show a list of interfaces which is implemented by the type under your cursor with <leader>s
au FileType go nmap <Leader>s <Plug>(go-implements)

