-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guicursor = "n-sm:block,i-ci-ve-c:ver25,r-cr-o-v:hor20"

if os.getenv("SSH_TTY") ~= nil then
  local function no_paste()
    return function()
      local content = vim.fn.getreg('"')
      return vim.split(content, "\n")
    end
  end

  vim.opt.clipboard = "unnamedplus"

  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = no_paste(),
      ["*"] = no_paste(),
    },
  }
end
