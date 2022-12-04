require("code_runner").setup({
	-- mode = "toggleterm",
	mode = "term",
	-- put here the commands by filetype
	filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		go = "cd $dir && go run $fileName",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
	},
})

vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
-- vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
