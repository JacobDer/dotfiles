-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require("packer").startup(
    function()
        use {"wbthomason/packer.nvim", opt=true}
        use {"lukas-reineke/indent-blankline.nvim"}
        use "kyazdani42/nvim-web-devicons"
        use "nvim-treesitter/nvim-treesitter"
        use "kyazdani42/nvim-tree.lua"
        use "nvim-lua/plenary.nvim"
        use {'hoob3rt/lualine.nvim', requires={'kyazdani42/nvim-web-devicons', opt = true}}
        use "neovim/nvim-lspconfig"
        use "kabouzeid/nvim-lspinstall"
        use "nanotee/sqls.nvim"
        use "tpope/vim-dadbod"
        use "kristijanhusak/vim-dadbod-ui" 
        use "hrsh7th/nvim-compe"
        use "hrsh7th/vim-vsnip"
        use "tweekmonster/startuptime.vim"
        use "nvim-telescope/telescope.nvim"   
        use "onsails/lspkind-nvim"
        use "nvim-lua/popup.nvim"
        use "norcalli/nvim-colorizer.lua"
        use "akinsho/nvim-toggleterm.lua"
        -- Color schemes
        use "Furkanzmc/cosmic_latte"
        use "glepnir/zephyr-nvim"
        use "bluz71/vim-nightfly-guicolors"
        use "sts10/vim-pink-moon"
        use "jsit/toast.vim"
    end
)
