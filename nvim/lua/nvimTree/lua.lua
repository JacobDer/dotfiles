vim.cmd [[packadd nvim-tree.lua]]

vim.o.termguicolors = true

require'nvim-tree'.setup {
  disable_netrw = true,
  hijack_netrw = true,
  hijack_cursor = false,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
}

local get_lua_cb = function(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
      noremap = true,
      silent = true
    }
)
