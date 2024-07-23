-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "ExitPre" }, {
  callback = function()
    -- vim.opt.guicursor = "a:ver30-blinkon1-blinkoff250-blinkwait10"
    vim.cmd('set guicursor= | call chansend(v:stderr, "\x1b[ q")')
  end,
})
