-- Language servers use nvim's built-in vim.lsp.config / vim.lsp.enable.
-- nvim-lspconfig supplies the default config for each server (its lsp/
-- directory); the calls below only add to those defaults.

local cmp = require('cmp')

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

-- Servers whose formatting shouldn't run on save.
local no_format = {
  unison = true,
  racket_langserver = true,
}

-- Servers whose semantic highlighting is turned off.
local no_highlight = {
  fsautocomplete = true,
  roc_ls = true,
}

local format_group = vim.api.nvim_create_augroup('lsp_format_on_save', { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp_attach', { clear = true }),
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end

    local function map(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { buffer = bufnr, silent = true })
    end

    map('<C-]>', vim.lsp.buf.definition)
    map('K', vim.lsp.buf.hover)
    map('<LocalLeader>ca', vim.lsp.buf.code_action)
    map('<LocalLeader>cl', vim.lsp.codelens.refresh)
    map('<LocalLeader>cr', vim.lsp.codelens.run)
    map('<LocalLeader>cd', vim.diagnostic.open_float)

    if not no_format[client.name] then
      vim.api.nvim_clear_autocmds({ group = format_group, buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = format_group,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end

    if no_highlight[client.name] then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})

vim.lsp.config('*', {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
})

vim.lsp.config('gopls', {
  settings = {
    gopls = {
      buildFlags = {
        '-tags=wireinject,tools',
      },
    },
  },
})

vim.lsp.config('ocamllsp', {
  cmd = { 'opam', 'exe', '--', 'ocamllsp' },
})

vim.lsp.config('purescriptls', {
  settings = {
    purescript = {
      addSpagoSources = true,
      addNpmPath = true,
      formatter = 'purs-tidy',
    },
  },
})

vim.lsp.config('pylsp', {
  cmd = { vim.env.HOME .. '/code/dotfiles/scripts/pylsp.sh' },
})

vim.lsp.config('hls', {
  settings = {
    haskell = {
      plugin = {
        ['ghcide-completions'] = {
          config = {
            snippetsOn = false,
          },
        },
        hlint = {
          globalOn = false,
        },
        stan = {
          globalOn = false,
        },
      },
    },
  },
})

vim.lsp.config('elixirls', {
  cmd = { vim.env.HOME .. '/code/elixir-ls/language_server.sh' },
  settings = {
    elixirLS = {
      dialyzerEnabled = false,
    },
  },
})

vim.lsp.enable({
  'dhall_lsp_server',
  'elixirls',
  'elmls',
  'fsautocomplete',
  'gleam',
  'gopls',
  'hls',
  'intelephense',
  'nickel_ls',
  'ocamllsp',
  'purescriptls',
  'pylsp',
  'racket_langserver',
  'roc_ls',
  'rust_analyzer',
  'ts_ls',
  'unison',
  'zls',
})

-- lean.nvim enables its own leanls server; the LspAttach handler above covers
-- it too.
vim.g.lean_config = { mappings = true }
