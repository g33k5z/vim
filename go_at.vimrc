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
syntax on
filetype plugin indent on



" Highlight
  let g:go_highlight_functions = 1  
  let g:go_highlight_methods = 1  
  let g:go_highlight_structs = 1  
  let g:go_highlight_operators = 1  
  let g:go_highlight_build_constraints = 1  

" color jazz
" let g:molokai_original = 1
" colorscheme molokai

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

map <C-n> :NERDTreeToggle<CR>

let g:tagbar_ctags_bin = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
