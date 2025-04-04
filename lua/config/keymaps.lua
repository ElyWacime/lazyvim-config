-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.set("n", "<leader>ma", "^", { desc = "Go to first non-blank character" })
-- vim.keymap.set("n", "<leader>me", "$", { desc = "Go to the end of the line" })
-- Move to the first non-blank character in the line

-- find and replace
vim.keymap.set("n", "<leader>mr", function()
  local old_string = vim.fn.input("Find: ")
  local new_string = vim.fn.input("Replace with: ")
  vim.cmd('grep -rl "' .. old_string .. '" .')
  vim.cmd("cfdo %s/" .. old_string .. "/" .. new_string .. "/gc | update")
end, { desc = "Find & Replace in Directory" })
vim.keymap.set("n", "<leader>fw", ":Telescope live_grep<CR>", { desc = "Find string in working dir" })

vim.keymap.set({ "n", "v" }, "<leader>ma", function()
  local line = vim.fn.getline(".") -- Get the current line
  local col = line:find("%S") or 1 -- Find first non-blank character

  -- Move cursor
  vim.api.nvim_win_set_cursor(0, { vim.fn.line("."), col - 1 })
end, { desc = "Go to first non-blank character", silent = true })

-- Get the comment pattern based on the file type
local function get_comment_pattern()
  local filetype = vim.bo.filetype
  local patterns = {
    -- Languages with `//` comments
    c = "//",
    cpp = "//",
    java = "//",
    javascript = "//",
    typescript = "//",
    tsx = "//",
    -- Languages with `#` comments
    python = "#",
    sh = "#",
    bash = "#",
    yaml = "#",
    toml = "#",
    perl = "#",
    -- Languages with `--` comments
    lua = "--",
    vim = '"',
  }
  return patterns[filetype] or "//" -- Default to `//` if unknown
end

-- Move to the first non-blank character in the line
vim.keymap.set({ "n", "v" }, "<leader>ma", function()
  local line = vim.fn.getline(".") -- Get current line
  local col = line:find("%S") or 1 -- Find first non-blank character

  -- Move cursor
  vim.api.nvim_win_set_cursor(0, { vim.fn.line("."), col - 1 })
end, { desc = "Go to first non-blank character", silent = true })

-- Move to the last non-comment character in the line
vim.keymap.set({ "n", "v" }, "<leader>me", function()
  local line = vim.fn.getline(".") -- Get current line
  local comment_symbol = get_comment_pattern() -- Get comment pattern
  local comment_start = line:find("%s*" .. vim.pesc(comment_symbol)) -- Find start of comment

  local col
  if comment_start then
    col = comment_start - 1 -- Move before the comment
  else
    col = #line -- If no comment, go to the end of the line
  end

  -- Remove trailing spaces
  col = line:sub(1, col):match("()%s*$") - 1 or col

  -- Move cursor
  vim.api.nvim_win_set_cursor(0, { vim.fn.line("."), col })
end, { desc = "Go to last non-comment character", silent = true })
