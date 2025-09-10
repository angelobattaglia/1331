require("abattaglia")

-- No problem saving with :W or :w
vim.api.nvim_create_user_command('W', 'w', {})

-- -- I don't need to do this because I just use abattaglia/init.lua
-- require("abattaglia.lazy")
-- require("abattaglia.settings")
-- require("abattaglia.keymaps")
