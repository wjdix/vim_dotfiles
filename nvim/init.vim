set nocompatible
syntax on

if &shell == "/usr/bin/sudosh"
  set shell=/bin/bash
endif

call plug#begin('~/.config/nvim/plugged')

Plug '~/.config/nvim/bundle/color_schemes'
Plug '~/.config/nvim/bundle/java-mappings'
Plug '~/.config/nvim/bundle/ruby-mappings'

Plug 'jlanzarotta/bufexplorer', {'tag': 'v7.4.6'}
Plug 'bkad/CamelCaseMotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lambdatoast/elm.vim'
Plug 'vim-scripts/matchit.zip', {'tag': '1.9'}
Plug 'kassio/neoterm' | Plug 'janko-m/vim-test'
Plug 'scrooloose/nerdtree', {'tag': '5.0.0'}
Plug 'rodjek/vim-puppet'
Plug 'rust-lang/rust.vim'
Plug 'tomtom/tcomment_vim', {'tag': '3.08'}
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-endwise'
Plug 'jtratner/vim-flavored-markdown'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', {'tag': 'v1.4'}
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'cespare/vim-toml'
Plug 'vim-erlang/vim-erlang-runtime'

call plug#end()

set hlsearch
set number
set showmatch
set incsearch
set background=dark
set hidden
set backspace=indent,eol,start
set ruler
set wrap
set dir=/tmp//
set scrolloff=5
set nofoldenable

set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set ignorecase
set smartcase

set wildignore+=*.pyc,*.o,*.class

let g:ctrlp_custom_ignore = 'node_modules\|_build\|deps\|elm-stuff'

let html_use_css=1
let html_number_lines=0
let html_no_pre=1

let g:rubycomplete_buffer_loading = 1

let g:no_html_toolbar = 'yes'

let coffee_no_trailing_space_error = 1

let go_highlight_trailing_whitespace_error = 0
let NERDTreeIgnore=['\.pyc$', '\.o$', '\.class$']

let g:NoseVirtualenv = ".env/bin/activate"

let g:ctrlp_match_window = "top,order:ttb"

let g:ctrlp_prompt_mappings = {
  \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
  \ 'PrtSelectMove("k")':   ['<c-p>','<c-k>', '<up>'],
  \ 'PrtHistory(-1)':       ['<c-j>'],
  \ 'PrtHistory(1)':        ['<c-k>'],
\ }

let test#strategy = "neoterm"

nnoremap <silent> <leader>rf :TestNearest<CR>
nnoremap <silent> <leader>rb :TestFile<CR>
nnoremap <silent> <leader>ra :TestSuite<CR>
nnoremap <silent> <leader>rl :TestLast<CR>

let g:neoterm_position = "vertical"
let g:neoterm_size = "100"

autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType tex setlocal textwidth=78
autocmd Filetype go setlocal noexpandtab
autocmd FileType rust setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.txt setlocal textwidth=78
autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown

imap <C-L> <SPACE>=><SPACE>
map <silent> <LocalLeader>rt :!ctags -R --exclude=".git" --exclude="log" --exclude="tmp" --exclude="db" --exclude="pkg" --exclude="deps" --exclude="_build" --extra=+f .<CR>
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
map <silent> <leader>ff :CtrlP<CR>
map <silent> <leader>fb :CtrlPBuffer<CR>
map <silent> <leader>fr :CtrlPClearCache<CR>
map <silent> <LocalLeader>nh :nohls<CR>
map <silent> <LocalLeader>bd :bufdo :bd<CR>
map <silent> <LocalLeader>cc :TComment<CR>

nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> Y y$

autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us

if &t_Co == 256
  colorscheme jellybeans
endif

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/

highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%-40f\                    " relative path
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file

set undodir=~/.config/nvim/undodir
set undofile
set undoreload=10000
