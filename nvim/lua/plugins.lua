return {

-- theme setup
  {
    'ramojus/mellifluous.nvim',
    lazy = false,
    priority = 1000,

    config = function()
        vim.cmd.colorscheme('mellifluous')
    end
  },

-- treesitter plugin
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        sync_install = false,
        highlight = { enable = true },
		indent = { enable = true }
      })
    end
  },

-- lsp plugins
  {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },

-- cmp plugins
  {
  	'hrsh7th/cmp-nvim-lsp',
  	'hrsh7th/cmp-buffer',
  	'hrsh7th/cmp-path',
  	'hrsh7th/cmp-cmdline',
  	'hrsh7th/nvim-cmp'
  },

-- telescope plugin
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
    	"nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
		"nvim-telescope/telescope-project.nvim",
    }
  },

-- lualine plugin
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

-- gitsigns plugin
  {
	'lewis6991/gitsigns.nvim',
  },

-- copilot plugin
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
  },

-- mini plugins
  {
	'echasnovski/mini.comment',
	'echasnovski/mini.pairs',
	'echasnovski/mini.starter',
  },

-- telekasten plugin
  {
    'renerocksai/telekasten.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'}
  },

}
