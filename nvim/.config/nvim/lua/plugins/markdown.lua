-- Renderiza markdown en el buffer (headers, code blocks, listas, etc.).
-- Solo aplica a buffers .md normales -- el panel de claudecode.nvim es una
-- terminal real (corre `claude` embebido), no un buffer, asi que esto no lo
-- toca a el.
return {
	"MeanderingProgrammer/render-markdown.nvim",
	ft = { "markdown" },
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	opts = {},
}
