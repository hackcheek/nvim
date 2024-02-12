function Colors(color, bg)
    bg = bg or true

	color = color or 'rose-pine'
	vim.cmd.colorscheme(color)
    
    if not bg then
        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
end

-- Default
Colors('poimandres', false)
