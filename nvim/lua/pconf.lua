--color
vim.opt.background = 'dark'
vim.opt.termguicolors = true

require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = true,
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})
vim.cmd("colorscheme gruvbox")


--vim.o.listchars = 'tab:┆·,trail:·,precedes:,extends:'

--vim.g.markdown_fenced_languages = {'sh', 'vim'}

--vim.g.termbufm_direction_cmd = 'new'
--
-- stline
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'gruvbox_dark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- fzf


-- vimtex
vim.g ['vimtex_view_method'] = 'mupdf'

-- vimwiki
vim.wiki_1 = {{}}
vim.wiki_1 =path
vim.g.vimwiki_list = {{path = '~/Documents/vim/wiki', syntax = 'markdown', ext = '.md'}, 
	{path = '~/Documents/vim/wiki/notas', syntax = 'markdown', ext = '.md'}, 
	{path = '~/Documents/vim/wiki/aulas', syntax = 'markdown', ext = '.md'},
	{path = '~/Documents/vim/wiki/codigo', syntax = 'markdown', ext = '.md'},
	{path = '~/Documents/vim/wiki/pesquisa', syntax = 'markdown', ext = '.md'},
	{path = '~/Documents/vim/wiki/conferencias', syntax = 'markdown', ext = '.md'}
}
vim.g.vimwiki_folding = 'expr'
vim.g.vimwiki_global_ext = 0

-- ultisnips
vim.g['UltiSnipsEditSplit'] = 'vertical'
vim.g['UltiSnipsJumpForwardTrigger'] = '<c-b>'
vim.g['UltiSnipsJumpBackwardTrigger'] = '<c-z>'

-- R
vim.g['R_external_term'] = 'st -e'
vim['R_silent_term'] = '1'

--treesitter
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "python", "r", "html", "c_sharp", "cpp", "bibtex", "regex", "markdown" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- List of parsers to ignore installing (for "all")
--  ignore_install = { "javascript"},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = {  "latex" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
	enable = true, -- default = disabled
  },
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- completion treesitter
vim.g.completion_chain_complete_list = {}

-- spellsitter
require('spellsitter').setup {
  -- Whether enabled, can be a list of filetypes, e.g. {'python', 'lua'}
  enable = true,
}

-- coq

--g.coq_settings = {
--  auto_start = 'shut-up',
--  display = {
--    icons = {
--      mode = 'none'
--    },
--    preview = {
--      border = 'rounded',
--    },
--  },
--}


require("coq_3p"){
    { src = "nvimlua", short_name = "nLUA", conf_only = false }, -- Lua
    { src = "bc", short_name = "MATH", precision = 6 }, -- Calculator
	{ src = "figlet", trigger = "!big" }, -- figlet command
	{ src = "vimtex", short_name= "vTex" },
    {
      src = "repl",
      sh = "ksh",
      shell = { p = "perl", n = "node" },
      max_lines = 99,
     deadline = 500,
      unsafe = { "rm", "poweroff", "mv", "doas" },
    },
}


-- vim.latex
-- Viewer options: One may configure the viewer either by specifying a built-in viewer method:
vim.g['vimtex_view_method'] = 'mupdf'

--Or with a generic interface:
--vim.g['vimtex_view_general_viewer'] = 'okular'
--vim.g['vimtex_view_general_options'] = '--unique file:@pdf\#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
--let g:vimtex_compiler_method = 'latexrun'

--Most VimTeX mappings rely on localleader and this can be changed with the
--following line. The default is usually fine and is the symbol "\".
--vim['maplocalleader'] = ','

-- pandoc.nvim
require'pandoc'.setup({
  commands = {
    -- Enable vim commands
    -- :Pandoc
    -- @type: boolean
    enable = true,
    -- Extended Mode
    -- When enabled the arguments passed by the `:Pandoc` command will be extended with the default arguments
    -- @type: boolean
    extended = true,
  },
  -- The pandoc executable
  -- @type: string
  binary = 'pandoc',
  -- Pandoc default options
  default = {
    -- Output file name with extension
    -- @type: string
    output = '%s.pdf',
    -- List of arguments
    -- @type: table
    args = {
      { '--standalone' },
    },
  },
  equation = {
    -- Border style.
    -- 'none', 'single', 'double' or 'rounded'
    -- @type: string
    border = 'single',
  },
})

-- nvim LSP
--local lsp_installer = require("nvim-lsp-installer")
--lsp_installer.on_server_ready(function(server)
--  local opts = {}
--  server:setup(opts)
--end)


-- Nvim LSP
-- Add additional capabilities supported by nvim-cmp
--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

--local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
--local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
--for _, lsp in ipairs(servers) do
--  lspconfig[lsp].setup {
--    -- on_attach = my_custom_on_attach,
--    capabilities = capabilities,
--  }
--end

-- setup LSP config
-- require("lspconfig").grammar_guard.setup({
--  cmd = { '/path/to/ltex-ls' }, -- add this if you install ltex-ls yourself
--	settings = {
--		ltex = {
--			enabled = { "latex", "tex", "bib", "markdown" },
--			language = "en",
--			diagnosticSeverity = "information",
--			setenceCacheSize = 2000,
--			additionalRules = {
--				enablePickyRules = true,
--				motherTongue = "en",
--			},
--			trace = { server = "verbose" },
--			dictionary = {},
--			disabledRules = {},
--			hiddenFalsePositives = {},
--		},
--	},
-- })
--
--		Run :GrammarInstall or with nvim-lsp-installer :LspInstall ltex

--		Run :LspInstallInfo for more information about installed servers.
