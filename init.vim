set nocompatible
syntax on

call plug#begin('~/.config/nvim/plugged')

Plug 'aklt/plantuml-syntax', {'commit': '405186847a44c16dd039bb644541b4c8fbdab095'}
Plug 'andy-morris/alex.vim', {'commit': 'bd95024624b297e212e57582a1ece21ac5dab6b8'}
Plug 'andy-morris/happy.vim', {'commit': '0f2f4719572c0236ff00e2bc8489bbcab8ac8c4f'}
Plug 'andys8/vim-elm-syntax', {'commit': '846a5929bff5795256fbca96707e451dbc755e36'}
Plug 'cespare/vim-toml', {'commit': '717bd87ef928293e0cc6cfc12ebf2e007cb25311'}
Plug 'dense-analysis/ale', {'commit': '31dc6a61a07839ea906f6f0b80be713fb8cad1c7'}
Plug 'derekelkins/agda-vim', {'commit': '4a0f475aaef756702222bdd5b01e25f814f5691f', 'for': ['agda']}
Plug 'drewolson/vim-elixir-alternative-files', {'commit': '9c984c852edacccde1071900c698a405dfdae83b'}
Plug 'elixir-editors/vim-elixir', {'commit': '1ad996e64dadf0d2a65c8a079d55a0ad057c08b4'}
Plug 'felipesere/pie-highlight.vim', {'commit': 'b20999e9df5cbdbd00b506aae35655aa97f604db'}
Plug 'gleam-lang/gleam.vim', {'commit': '847a5ef57c2faef2774242c87f711d1131b89fe6'}
Plug 'godlygeek/tabular', {'commit': '339091ac4dd1f17e225fe7d57b48aff55f99b23a'} | Plug 'plasticboy/vim-markdown', {'commit': '8e5d86f7b85234d3d1b4207dceebc43a768ed5d4'}
Plug 'hrsh7th/cmp-nvim-lsp', {'commit': 'f93a6cf9761b096ff2c28a4f0defe941a6ffffb5'}
Plug 'hrsh7th/nvim-cmp', {'commit': 'c2a9e0ccaa5c441821f320675c559d723df70f3d'}
Plug 'hrsh7th/vim-vsnip', {'commit': '9ac8044206d32bea4dba34e77b6a3b7b87f65df6'}
Plug 'jlanzarotta/bufexplorer', {'commit': '99557c451ff6ed3bbb9b9f6215ad57e919740635'}
Plug 'jparise/vim-graphql', {'commit': '9a9fe186a73fce636398ee7f851466ef60c9fde5'}
Plug 'junegunn/fzf', {'tag': '0.28.0', 'dir': '~/.fzf', 'do': './install --bin'} | Plug 'junegunn/fzf.vim', {'commit': 'd6aa21476b2854694e6aa7b0941b8992a906c5ec'}
Plug 'junegunn/goyo.vim', {'commit': 'a865dec7ca7616dbbd69315ad1417b84d0c411f8'}
Plug 'leafgarland/typescript-vim', {'commit': '67e81e4292186889a1a519e1bf3a600d671237eb'}
Plug 'maxmellon/vim-jsx-pretty', {'commit': '6989f1663cc03d7da72b5ef1c03f87e6ddb70b41'}
Plug 'monkoose/fzf-hoogle.vim', {'commit': 'v2.3.0', 'for': ['haskell']}
Plug 'nanotech/jellybeans.vim', {'commit': 'v1.7'}
Plug 'neovim/nvim-lspconfig', {'commit': '06e54cdfa38c2129bc555b6ee77d4086c3a74e5c'}
Plug 'neovimhaskell/haskell-vim', {'commit': 'f35d02204b4813d1dbe8b0e98cc39701a4b8e15e'}
Plug 'ocaml/vim-ocaml', {'commit': '2ebddd0ef575193e2aac31172f8f3a5f543f530f'}
Plug 'pangloss/vim-javascript', {'tag': 'd6e137563c47fb59f26ed25d044c0c7532304f18'}
Plug 'preservim/nerdtree', {'commit': 'eed488b1cd1867bd25f19f90e10440c5cc7d6424'}
Plug 'preservim/vimux', {'commit': '89604a4464c3069dbe31f7bc8dd16a5fbc88a303'} | Plug 'vim-test/vim-test', {'commit': '1efc3def36eff8ac12ddb1f25837ef6101531047'}
Plug 'purescript-contrib/purescript-vim', {'commit': 'd493b57406d2742f6f6c6545de5a3492f2e5b888'}
Plug 'rodjek/vim-puppet', {'commit': '980147f64d708652aad1e67d8b39c17b2dd07702'}
Plug 'rust-lang/rust.vim', {'commit': '4aa69b84c8a58fcec6b6dad6fe244b916b1cf830'}
Plug 'tomtom/tcomment_vim', {'commit': '5c5c31121ec607011c1e382163c0bce207ac2966'}
Plug 'tpope/vim-fugitive', {'commit': 'cd67d087df560a2cbf02cf74fbb937797d4ae797'}
Plug 'tpope/vim-ragtag', {'commit': 'b8966c4f6503a8baaec39e17bd0bf38b2aadc9b2'}
Plug 'tpope/vim-rails', {'commit': 'a4595b48a83824e36c1ebe48b574aa8624632695', 'for': ['ruby', 'rails']}
Plug 'vim-erlang/vim-erlang-runtime', {'commit': 'f62fa7eb5c17e8fbf93d7dcc5ff593dc534fd44b'}
Plug 'vim-ruby/vim-ruby', {'commit': 'ee99a4cdb6931a5409b17c8f0f397a5c5dd6a035'}
Plug 'vim-scripts/indentpython.vim', {'commit': '6aaddfde21fe9e7acbe448b92b3cbb67f2fe1fc1'}
Plug 'vmchale/dhall-vim', {'commit': '68500ef46ff3706f46c99db3be7a0c8abcf6a3ae'}
Plug 'whonore/Coqtail', {'commit': 'c8ffb3d358e85211b17dd18df6007e3be1bd2569'}
Plug 'wlangstroth/vim-racket', {'commit': '32ad23165c96d05da7f3b9931d2889b7e39dcb86'}

call plug#end()

set background=dark
set backspace=indent,eol,start
set backupcopy=yes
set completeopt=menu,menuone,noselect
set dir=/tmp//
set exrc
set hidden
set hlsearch
set ignorecase
set incsearch
set isk+=?
set mouse=
set nobackup
set nofoldenable
set noshowcmd
set nowritebackup
set number
set ruler
set scrolloff=5
set showmatch
set signcolumn=number
set smartcase
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set updatetime=300
set wildignore+=*.pyc,*.o,*.class
set wrap

colorscheme jellybeans

autocmd BufNewFile,BufRead *.md,*.markdown setlocal textwidth=80 spell
autocmd BufNewFile,BufRead *.txt setlocal textwidth=80 spell
autocmd FileType dune setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType elm,kotlin,php,python,rust setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType gitcommit setlocal spell
autocmd FileType go setlocal noexpandtab
autocmd FileType tex setlocal textwidth=80 spell
autocmd Filetype elixir :command! A ElixirAlternateFile()

function! GitGrepWord()
  cgetexpr system("git grep -n '" . expand("<cword>") . "'")
  cwin
  echo 'Number of matches: ' . len(getqflist())
endfunction
command! -nargs=0 GitGrepWord :call GitGrepWord()
nnoremap <silent> <Leader>gw :GitGrepWord<CR>

let html_use_css=1
let html_number_lines=0
let html_no_pre=1
let g:no_html_toolbar = 'yes'

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2

call tcomment#type#Define('unison', '-- %s')

let g:rubycomplete_buffer_loading = 1

let g:go_highlight_trailing_whitespace_error = 0

let g:python3_host_prog  = '~/.asdf/shims/python3'
let g:python_host_prog  = '/usr/bin/python2'

let NERDTreeIgnore=['\.pyc$', '\.o$', '\.class$', '\.ibc$', '\.idr\~$', '^__pycache__$']

let $FZF_DEFAULT_COMMAND = 'rg --files'
let $FZF_DEFAULT_OPTS = '--reverse'
let g:fzf_tags_command = 'ctags -R --exclude=".git" --exclude="node_modules" --exclude="vendor" --exclude="log" --exclude="tmp" --exclude="db" --exclude="pkg" --exclude="deps" --exclude="_build" --exclude="output" --extra=+f .'

let g:test#strategy = 'vimux'
let g:test#preserve_screen = 0
let g:test#python#runner = 'pytest'
let g:test#haskell#stacktest#test_command = 'test .'

let g:VimuxOrientation = 'h'
let g:VimuxHeight = '40'

let g:hoogle_path = 'stack exec -- hoogle'

let g:ale_linters = {
\  'elixir': ['credo'],
\  'idris': ['idris'],
\  'racket': ['raco'],
\  'ruby': ['ruby'],
\}

let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'gleam': [{buffer, lines -> {'command': 'gleam format %t', 'read_temporary_file': 1}}],
\  'javascript': ['prettier'],
\  'typescript': ['prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters_explicit = 1
let g:ale_elixir_credo_strict = 1

let purescript_indent_case = 2
let purescript_indent_where = 2
let purescript_indent_do = 2

nnoremap <silent> <leader>rf :wa<CR>:TestNearest<CR>
nnoremap <silent> <leader>rb :wa<CR>:TestFile<CR>
nnoremap <silent> <leader>ra :wa<CR>:TestSuite<CR>
nnoremap <silent> <leader>rl :wa<CR>:TestLast<CR>

imap <C-L> <SPACE>=><SPACE>
map <silent> <LocalLeader>rt :!ctags -R --exclude=".git" --exclude="node_modules" --exclude="vendor" --exclude="log" --exclude="tmp" --exclude="db" --exclude="pkg" --exclude="deps" --exclude="_build" --extra=+f .<CR>
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
map <silent> <LocalLeader>ff :Files<CR>
map <silent> <LocalLeader>fg :GFiles<CR>
map <silent> <LocalLeader>fb :Buffers<CR>
map <silent> <LocalLeader>ft :Tags<CR>
map <silent> <LocalLeader>nh :nohls<CR>
map <silent> <LocalLeader>cc :TComment<CR>

map <silent> <LocalLeader>ci <Plug>CoqInterrupt
map <silent> <LocalLeader>cb <Plug>CoqStart

nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> Y y$

highlight DiagnosticError ctermfg=Red guifg=Red
highlight DiagnosticWarn ctermfg=Yellow guifg=Yellow
highlight DiagnosticInfo ctermfg=LightBlue guifg=LightBlue
highlight DiagnosticHint ctermfg=White guifg=White

highlight DiagnosticFloatingError ctermfg=White guifg=White
highlight DiagnosticFloatingWarn ctermfg=White guifg=White
highlight DiagnosticFloatingInfo ctermfg=White guifg=White
highlight DiagnosticFloatingHint ctermfg=White guifg=White

highlight ExtraWhitespace ctermbg=red guibg=red

autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

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

lua << EOF
_G.nvim_lsp = require('lspconfig')

function _G.lsp_on_attach(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', '<C-]>', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>cl', '<cmd>lua vim.lsp.codelens.refresh()<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>cr', '<cmd>lua vim.lsp.codelens.run()<CR>', opts)
  buf_set_keymap('n', '<LocalLeader>cd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)

  vim.api.nvim_command([[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]])

  local cmp = require 'cmp'

  cmp.setup {
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-y>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ['<C-X><C-O>'] = cmp.mapping.complete(),
    },
    snippet = {
      expand = function(args)
        vim.fn['vsnip#anonymous'](args.body)
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    },
    completion = {
      autocomplete = false,
    },
  }
end

_G.lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
_G.lsp_capabilities = require('cmp_nvim_lsp').update_capabilities(_G.lsp_capabilities)

local vanilla_servers = {
  'dhall_lsp_server',
  'elmls',
  'gopls',
  'intelephense',
  'ocamllsp',
  'rust_analyzer',
  'tsserver',
}

for _, lsp in ipairs(vanilla_servers) do
  _G.nvim_lsp[lsp].setup {
    on_attach = _G.lsp_on_attach,
    capabilities = _G.lsp_capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

_G.nvim_lsp['purescriptls'].setup {
  on_attach = _G.lsp_on_attach,
  capabilities = _G.lsp_capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    purescript = {
      addSpagoSources = true,
      addNpmPath = true,
      formatter = 'purs-tidy'
    }
  }
}

_G.nvim_lsp['pylsp'].setup {
  on_attach = _G.lsp_on_attach,
  capabilities = _G.lsp_capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  cmd = { 'poetry', 'run', 'pyls' },
  settings = {
    pyls = {
      enable = true,
      plugins = {
        pyls_mypy = {
          enabled = true,
          live_mode = false
        }
      }
    }
  }
}

_G.nvim_lsp['hls'].setup {
  on_attach = _G.lsp_on_attach,
  capabilities = _G.lsp_capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    haskell = {
      plugin = {
        ['ghcide-completions'] = {
          config = {
            snippetsOn = false
          }
        }
      }
    }
  }
}

_G.nvim_lsp['elixirls'].setup {
  on_attach = _G.lsp_on_attach,
  capabilities = _G.lsp_capabilities,
  flags = {
    debounce_text_changes = 150,
  },
  cmd = { vim.env.HOME .. '/code/elixir-ls/language_server.sh' },
  settings = {
    elixirLS = {
      dialyzerEnabled = false
    }
  }
}
EOF
