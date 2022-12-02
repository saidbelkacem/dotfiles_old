local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
	return
end
local status_ok, dapui = pcall(require, "dapui")
if not status_ok then
	return
end

dap.adapters.lldb = {
	type = "executable",
	command = "/usr/bin/lldb-vscode", -- adjust as needed, must be absolute path
	name = "lldb",
}
dap.configurations.lua = {
	{
		type = "nlua",
		request = "attach",
		name = "Attach to running Neovim instance",
	},
}

dap.configurations.cpp = {
	{
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		args = {},
		runInTerminal = true,
	},
}

dap.configurations.c = dap.configurations.cpp

dap.adapters.delve = {
	type = "server",
	port = "${port}",
	executable = {
		command = "dlv",
		args = { "dap", "-l", "127.0.0.1:${port}" },
	},
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}",
	},
	{
		type = "delve",
		name = "Debug test", -- configuration for debugging test files
		request = "launch",
		mode = "test",
		program = "${file}",
	},
	-- works with go.mod packages and sub packages
	{
		type = "delve",
		name = "Debug test (go.mod)",
		request = "launch",
		mode = "test",
		program = "./${relativeFileDirname}",
	},
}

vim.keymap.set("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")

vim.fn.sign_define("DapBreakpoint", { text = ">", texthl = "DiagnosticInfo" })
vim.fn.sign_define("DapStopped", { text = ">", texthl = "DiagnosticWarn" })
vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DiagnosticInfo" })
vim.fn.sign_define("DapLogPoint", { text = ".>", texthl = "DiagnosticInfo" })

vim.keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
vim.keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
vim.keymap.set("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>")

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
	vim.keymap.set("n", "s", "<cmd>lua require'dap'.step_into()<cr>")
	vim.keymap.set("n", "o", "<cmd>lua require'dap'.step_over()<cr>")
	vim.keymap.set("n", "O", "<cmd>lua require'dap'.step_out()<cr>")
	vim.keymap.set("n", "S", "<cmd>lua require'dap'.terminate()<cr>")
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	vim.keymap.del("n", "s")
	vim.keymap.del("n", "o")
	vim.keymap.del("n", "O")
	vim.keymap.del("n", "S")
	dap.repl.close()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

dapui.setup({
	icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
	mappings = {
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	expand_lines = vim.fn.has("nvim-0.7"),
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.30 },
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 70, -- 40 columns
			position = "left",
		},
		{
			elements = {
				"repl",
			},
			position = "bottom",
			size = 25,
		},
	},
	controls = {
		enabled = true,
		element = "repl",
		icons = {
			pause = "",
			play = "",
			step_into = "",
			step_over = "",
			step_out = "",
			step_back = "",
			run_last = "",
			terminate = "",
		},
	},
	floating = {
		max_height = nil, -- These can be integers or a float between 0 and 1.
		max_width = nil, -- Floats will be treated as percentage of your screen.
		border = "single", -- Border style. Can be "single", "double" or "rounded"
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
	render = {
		max_type_length = nil, -- Can be integer or nil.
		max_value_lines = 100, -- Can be integer or nil.
	},
})
