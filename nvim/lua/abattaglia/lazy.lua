local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"rose-pine/neovim", name = "rose-pine"},
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                contrast = "hard",         -- "soft", "medium", or "hard"
                transparent_mode = false,  -- true if you want terminal background
            })
            vim.cmd.colorscheme("gruvbox")
        end,
    },
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here
        end
    },
    {
        "jghauser/follow-md-links.nvim"
    },
    { "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate"}
})

-- I set gruvbox at line 18
-- vim.cmd('colorscheme rose-pine')

