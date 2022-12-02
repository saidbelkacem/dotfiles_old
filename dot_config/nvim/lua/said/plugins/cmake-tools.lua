require("cmake-tools").setup({
	cmake_command = "cmake",
	cmake_build_directory = "build",
	cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
	cmake_build_options = {},
	cmake_console_size = 10, -- cmake output window height
	cmake_show_console = "always", -- "always", "only_on_error"
	cmake_dap_configuration = { name = "cpp", type = "lldb", request = "launch" }, -- dap configuration, optional
	-- cmake_dap_open_command = require("dap").repl.open, -- optional
	cmake_dap_open_command = function()
		return require("dap").repl.open()
	end, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui

	cmake_variants_message = {
		short = { show = true },
		long = { show = true, max_length = 40 },
	},
})
