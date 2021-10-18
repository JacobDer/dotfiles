-- Plugins
require("pluginsList.lua")

-- Plugin settings
require("web-devicons.lua")
require("statusline.lua")
require("nvimTree.lua")
require("utils.lua")
require("treesitter.lua")
require("lspconfig.lua")
require("compe.lua")
require("terminal.lua")
require("lspicons.lua")

local cmd = vim.cmd
local g = vim.g

-- Colorscheme and highlighting
cmd("set termguicolors")
cmd("syntax enable")
cmd("syntax on")
cmd("set colorcolumn=80")

cmd("set background=light")
cmd("colorscheme toast")
cmd("highlight Normal guibg=none guifg=none")

cmd("hi LineNr guibg=NONE")
cmd("hi SignColumn guibg=NONE") 
cmd("hi DiffAdd guifg=#202a31 guibg=NONE")
cmd("hi DiffChange guifg=#202a31 guibg=NONE")
cmd("hi DiffModified guifg=#202a31 guibg=NONE")
cmd("let &fcs='eob: '")

-- Indent lines
local indent = 2

--g.indentLine_enabled = 1
--g.indent_blankline_char = "▏"
--g.indent_blankline_filetype_exclude = {"help", "terminal"}
--g.indent_blankline_show_trailing_blankline_indent = false
--g.indent_blankline_show_first_indent_level = false
