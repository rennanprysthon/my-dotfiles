local status, packer = pcall(require, 'packer') 

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'tpope/vim-fugitive'
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim' -- Statuslin
  use 'MaxMEllon/vim-jsx-pretty' 
  use 'sheerun/vim-polyglot'
  use 'HerringtonDarkholme/yats.vim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }
  use 'preservim/nerdtree'
  use 'akinsho/nvim-bufferline.lua'
  use 'morhetz/gruvbox'
  use 'Mofiqul/dracula.nvim'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'L3MON4D3/LuaSnip'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'norcalli/nvim-colorizer.lua'
  use 'dinhhuy258/git.nvim' -- For git blame & browseA
  use 'windwp/nvim-ts-autotag' 
  use 'windwp/nvim-autopairs'
  use 'mattn/emmet-vim'
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
          local saga = require("lspsaga")

          saga.init_lsp_saga({
              -- your configuration
          })
      end,
  })
  
  -- Java
  use 'mfussenegger/nvim-jdtls'
end)

