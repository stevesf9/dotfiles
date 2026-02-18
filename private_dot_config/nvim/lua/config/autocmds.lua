-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Set local directory to current file's folder",
  callback = function()
    if vim.bo.filetype == "neo-tree" then
      return
    end
    local file = vim.api.nvim_buf_get_name(0)
    if file ~= "" then
      local dir = vim.fn.fnamemodify(file, ":p:h")
      vim.cmd("silent! lcd " .. vim.fn.fnameescape(dir))
    end
  end,
})
