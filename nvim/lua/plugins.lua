return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
--	use 'lukas-reineke/indent-blankline.nvim'
    use 'tpope/vim-commentary'
    use 'honza/vim-snippets'
    use 'SirVer/ultisnips'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use 'junegunn/goyo.vim'
    use 'mbbill/undotree'
    use 'tweekmonster/startuptime.vim'
    use 'vimwiki/vimwiki'
    use 'jremmen/vim-ripgrep'
    use 'rhysd/vim-grammarous'
    use 'tpope/vim-fugitive'
    use 'leafgarland/typescript-vim'
    use 'lervag/vimtex'
    use 'aspeddro/pandoc.nvim'
    use 'godlygeek/tabular'
    use 'tpope/vim-obsession'
    use 'vim-pandoc/vim-pandoc'
    use 'vim-pandoc/vim-pandoc-syntax'
    use 'conornewton/vim-pandoc-markdown-preview'
    use 'xuhdev/vim-latex-live-preview'
    use 'voldikss/vim-floaterm'
    use 'jalvesaq/Nvim-R'
    use 'lambdalisue/fern.vim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }
    use 'ms-jpq/coq_nvim' -- Autocompletion plugin
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use { 'ms-jpq/coq.thirdparty', branch = '3p'}
--	use 'uga-rosa/cmp-dictionary'
--	use 'f3fora/cmp-spell'
--	use 'kdheepak/cmp-latex-symbols'
--	use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
--	use 'quangnguyen30192/cmp-nvim-ultisnips'
--	use 'hrsh7th/cmp-buffer'
--	use 'hrsh7th/cmp-path'
--	use 'hrsh7th/cmp-cmdline'
--	use 'cbarrete/completion-vcard'
--	use {
--		'aspeddro/cmp-pandoc.nvim',
--		requires = {
--			'nvim-lua/plenary.nvim',
--	    	}
--		}
--	use 'williamboman/nvim-lsp-installer'
    use 'lewis6991/spellsitter.nvim'
--	use 'neovim/nvim-lspconfig' -- Collection of configurations for the built-in LSP client
    use 'nvim-treesitter/completion-treesitter'
    use {
            'ninjin/vim-openbsd',
            cmd = 'Openbsd'
        }

--		use 'brymer-meneses/grammar-guard.nvim'
--		use 'ptzz/lf.vim'
--		use 'voldikss/vim-floaterm'
end)
