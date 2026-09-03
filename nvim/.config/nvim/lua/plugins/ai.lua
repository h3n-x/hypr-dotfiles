-- claudecode.nvim -- se conecta a la sesion de la CLI `claude` (misma que
-- usas en la terminal) via el protocolo MCP/WebSocket de la extension
-- oficial, sin pedir una API key aparte.
return {
	"coder/claudecode.nvim",
	dependencies = { "folke/snacks.nvim" },
	config = true,
	cmd = {
		"ClaudeCode", "ClaudeCodeFocus", "ClaudeCodeSelectModel", "ClaudeCodeAdd",
		"ClaudeCodeSend", "ClaudeCodeTreeAdd", "ClaudeCodeStatus", "ClaudeCodeStart",
		"ClaudeCodeStop", "ClaudeCodeOpen", "ClaudeCodeClose", "ClaudeCodeDiffAccept",
		"ClaudeCodeDiffDeny", "ClaudeCodeCloseAllDiffs",
	},
	keys = {
		{ "<leader>a", nil, desc = "IA / Claude Code" },
		{ "<leader>ac", "<cmd>ClaudeCode<CR>", desc = "Toggle Claude" },
		{ "<leader>af", "<cmd>ClaudeCodeFocus<CR>", desc = "Focus Claude" },
		{ "<leader>ar", "<cmd>ClaudeCode --resume<CR>", desc = "Resume Claude" },
		{ "<leader>aC", "<cmd>ClaudeCode --continue<CR>", desc = "Continue Claude" },
		{ "<leader>am", "<cmd>ClaudeCodeSelectModel<CR>", desc = "Elegir modelo" },
		{ "<leader>ab", "<cmd>ClaudeCodeAdd %<CR>", desc = "Agregar buffer actual" },
		{ "<leader>as", "<cmd>ClaudeCodeSend<CR>", mode = "v", desc = "Enviar seleccion" },
		{
			"<leader>as",
			"<cmd>ClaudeCodeTreeAdd<CR>",
			desc = "Agregar archivo",
			ft = { "yazi", "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
		},
		{ "<leader>aa", "<cmd>ClaudeCodeDiffAccept<CR>", desc = "Aceptar diff" },
		{ "<leader>ad", "<cmd>ClaudeCodeDiffDeny<CR>", desc = "Rechazar diff" },
	},
}
