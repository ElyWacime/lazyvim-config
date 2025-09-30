-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

-- Ensure Treesitter highlighting always attaches on buffer enter

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local fname = vim.fn.expand("%:t")
    local ext = fname:match("^.+%.(.+)$")
    if ext then
      local map = {
        tsx = "tsx",
        jsx = "javascriptreact",
        js = "javascript",
        ts = "typescript",
        lua = "lua",
        py = "python",
        rb = "ruby",
        php = "php",
        html = "html",
        css = "css",
        json = "json",
        yml = "yaml",
        yaml = "yaml",
        toml = "toml",
        md = "markdown",
        cpp = "cpp",
        c = "c",
        h = "c",
      }
      if map[ext] then
        vim.bo.filetype = map[ext]
      end
    end
  end,
})
