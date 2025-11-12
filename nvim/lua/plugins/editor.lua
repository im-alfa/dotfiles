return {
    {
        'andymass/vim-matchup',
        config = function()
            vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end
    },
    {
		'ggandor/leap.nvim',
		config = function()
			vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
			vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
		end
	},
}