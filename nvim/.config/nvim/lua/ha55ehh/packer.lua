local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
    })
end


return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use('ayu-theme/ayu-vim')

	use('nvim-lua/popup.nvim')
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- use('nvim-lua/plenary.nvim')
	-- use('nvim-telescope/telescope.nvim')

	use('nvim-treesitter/nvim-treesitter', {
		run = ":TSUpdate"
	})

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        require('lualine').setup()
    end
    }
end)

