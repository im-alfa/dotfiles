return {
  -- thanks Jon Gjengset
  -- colourscheme
	{
		"wincent/base16-nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme gruvbox-dark-hard]])
			vim.o.background = 'dark'
			vim.cmd([[hi Normal ctermbg=NONE]])

			-- Less visible window separator
			vim.api.nvim_set_hl(0, "WinSeparator", { fg = 1250067 })

			-- Make comments more prominent -- they are important.
			local bools = vim.api.nvim_get_hl(0, { name = 'Boolean' })
			vim.api.nvim_set_hl(0, 'Comment', bools)

			-- Make it clearly visible which argument we're at.
			local marked = vim.api.nvim_get_hl(0, { name = 'PMenu' })
				vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { 
				fg = marked.fg, 
				bg = marked.bg, 
				ctermfg = marked.ctermfg, 
				ctermbg = marked.ctermbg, 
				bold = true 
			})
		end
	},
  	-- nice bar
	{
		'itchyny/lightline.vim',
		lazy = false,
		config = function()
			vim.o.showmode = false
			vim.g.lightline = {
				active = {
					left = {
						{ 'mode', 'paste' },
						{ 'readonly', 'filename', 'modified' }
					},
					right = {
						{ 'lineinfo' },
						{ 'percent' },
						{ 'fileencoding', 'filetype' }
					},
				},
				component_function = {
					filename = 'LightlineFilename'
				},
			}
			function LightlineFilenameInLua(opts)
				if vim.fn.expand('%:t') == '' then
					return '[No Name]'
				else
					return vim.fn.getreg('%')
				end
			end
			-- https://github.com/itchyny/lightline.vim/issues/657
			vim.api.nvim_exec(
				[[
				function! g:LightlineFilename()
					return v:lua.LightlineFilenameInLua()
				endfunction
				]],
				true
			)
		end
	},
	{
		'nvim-telescope/telescope.nvim', tag = 'v0.1.9',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('config.telescope')
		end
    }
}