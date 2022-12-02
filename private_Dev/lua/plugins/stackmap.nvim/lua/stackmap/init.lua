local M = {}

M.example = function()
	print("helloooooo")
end

--[[ M.setup = function(opts) ]]
--[[   print("Options:", opts) ]]
--[[ end ]]
--[[]]
--[[]]

-- local find_mapping = function (maps,lhs)
--   for _, value in ipairs(maps) do
--     if value.lhs == lhs then
--     return value
--     end
--   end
-- end
--
-- M.push = function (name, mode, mappings)
--   local maps = vim.api.nvim_get_keymap(mode)
--
--   for lhs, rhs in pairs(mappings) do
--   print("searching for:", lhs)
--   end
--   P(find_mapping(maps, lhs))
-- end
-- M.pop = function (name)
-- end
--
-- M.push("debug_mode", "n", {
--   [" ff"] = "echo 'hello",
--   [",sz"] = "echo 'goodby'",
-- } )

return M

--[[ vim.pretty_print(maps) ]]
