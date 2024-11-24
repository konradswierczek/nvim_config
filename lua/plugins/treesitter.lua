-- ~/.config/nvim/lua/plugins/treesitter.lua

-- Ensure nvim-treesitter is installed and configured properly
return {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate', -- Automatically update parsers after installation
  config = function()
    -- Configure treesitter settings
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true,
	additional_vim_regex_highlighting = false,				-- Enable Treesitter syntax highlighting
      },
      ensure_installed = {  -- Specify the languages to install
        "lua",
        "python",
        "javascript",
        "html",
        "css", 
	"bash",
	"json",
	"vim",
	"yaml",
	"markdown",
	"xml",
	"http",
	"gitcommit",
	"gitignore",
	"dockerfile",
	"latex",
	"make"
      },
      indent = {
        enable = true,  -- Enable Treesitter-based indentation
      },
      -- Other configuration options you might need
    }
  end
}

