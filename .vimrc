"
" fumbling towards a golang/py focused vim config
"

" color jazz
" let g:molokai_original = 1
" colorscheme molokai
set t_Co=256


" mono font made for go
" TODO: only set this on .go files
set guifont=Go\ Mono:h13

execute pathogen#infect()
syntax on
filetype plugin indent on
set number


" unmap arrow keys => plis men no cheat
" no <up> <NoP>
" no <down> <NoP>
" no <left> <NoP>
" no <right> <NoP>


" ino <up> <NoP>
" ino <down> <NoP>
" ino <left> <NoP>
" ino <right> <NoP>


" add alt ways to :w
" TODO: diff :update vs :q ?
nmap <leader>w :w<CR>
nmap <esc> :w<CR>

set hlsearch
hi Search ctermfg=black ctermbg=3

hi Directory ctermfg=cyan
hi Constant ctermfg=115
hi Comment ctermfg=darkgrey
hi pythonImport ctermfg=120
hi Statement ctermfg=120
hi pythonFloat ctermfg=3
hi pythonNumber ctermfg=3
hi pythonBoolean ctermfg=3

" change default hilight of brackets, easier to see
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" set line numbers to less annoying than default
hi LineNr ctermfg=darkmagenta

" ------------------------------------------------------
"  func jazz
"

"
" TabOpen will open a new tab for each file found in dir
"
" dir can be a $VAR as well, example:
" 	export aA_DEV_ROOT="/mnt/disks/nlp/atoledo/nlp-sandbox/Notebooks/lib/Summarization_v206"
" 	:call TabOpen("$aA_DEV_ROOT")
"
function! TabOpen(dir)
	exec  join(["args ",a:dir,"/* | tab all"], "")
endfunction

"
" VirtOpen
"
function! VirtOpen(dir)
	exec  join(["tabnew | args ",a:dir,"/* | vertical all"], "")
endfunction


" ------------------------------------------------------
" py jazz
"
"  https://github.com/davidhalter/jedi-vim

" https://github.com/vim-python/python-syntax
let g:python_highlight_all = 1

" Highlight docstrings as comments, not string.
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ end=+"""+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ end=+'''+ keepend excludenl contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError

" hi def link pythonDocstring Comment

" https://vim.fandom.com/wiki/Changing_the_default_syntax_highlighting
" syn region pythonComment start=+('''\|""")+ end=+('''\|""")+ keepend

" hi pythonComment ctermfg=cyan


syntax match pids "\vSummaryRequest"
hi pids ctermfg=cyan

" tidy up py scripts
map <C-,> :perldo s/\s+$//g<cr>
" |echo "go home py ur drunk"

map <C-R> :source ~/.vimrc
"|echo "Feel like a Sir \\(0_o)/" 

" ------------------------------------------------------


" golang syntax highlights (plugin)
" call plug#begin('~/.vim/plugged')
" Plug 'OmniSharp/omnisharp-vim'
" call plug#end()


" Highlight
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1

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


" Press Ctrl-Tab to switch between open tabs (like browser tabs) to
" the right side. Ctrl-Shift-Tab goes the other way.
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
noremap <D-8> :tabn 8<CR>
noremap <D-9> :tabn 9<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>
