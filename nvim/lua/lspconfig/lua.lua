vim.cmd [[packadd nvim-lspconfig]]
vim.cmd [[packadd nvim-compe]]

function on_attach(client)


  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

 -- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)


end 

require'lspconfig'.pylsp.setup{
  cmd = {'/Users/jacobder/Library/Python/3.9/bin/pylsp'},
  on_attach = on_attach
}

require'lspconfig'.r_language_server.setup {
  on_attach = on_attach,
}

require'lspconfig'.sqls.setup{
  settings = {
    sqls = {
      connections = {
        {
          driver = 'postgresql',
          dataSourceName = 'host=localhost port=5432 user=postgres password=password sslmode=disable'
        }
      }
    }
  },

  on_attach = function(client)
    client.resolved_capabilities.execute_command = true

    require'sqls'.setup{}
  end,
  cmd = {"/Users/jacobder/go/bin/sqls"}
}

require'lspconfig'.texlab.setup{
  on_attach = on_attach,
  cmd = {'/Users/jacobder/Library/texlab/texlab'},
  settings = {
    texlab = {
      build = {
        onSave = false
      }
    },
    chktex = {
      onEdit = true
    }
  }
}
