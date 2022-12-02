local myString = "Hello du coller Typ"
local myGroup = vim.api.nvim_create_augroup("FileType", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello Said'", group = myGroup })
vim.api.nvim_create_autocmd("BufEnter", { command = "echo 'Hello Said'", group = myGroup })
vim.api.nvim_create_autocmd("BufEnter", { callback = function()
  print(myString)
end, group = myGroup, buffer = 0 })




--[[ vim.api.nvim.nvim_create_autocmd("FileType", { ]]
--[[   pattern = {"lua", "text"}, ]]
--[[   callback = function() ]]
--[[     vim.schedule(function() ]]
--[[       print("hey we") ]]
--[[     end) ]]
--[[   end, ]]
--[[ }]]
