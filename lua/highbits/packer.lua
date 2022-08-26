return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'marko-cerovac/material.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() 
            require('nvim-treesitter.install').update({ with_sync = true }) 
        end,
    }
    use {
        "akinsho/toggleterm.nvim", tag = 'v2.*',
        config = function() 
            require("toggleterm").setup() 
        end
    }
end)
