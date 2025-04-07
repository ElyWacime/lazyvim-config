return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    -- Define the keymaps for various multi-cursor actions
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>", -- Find word under cursor and add a cursor
      ["Find Subword Under"] = "<C-d>", -- Find subword under cursor (e.g., camelCase) and add a cursor
      ["Select All"] = "<C-n>", -- Select all occurrences of a word (similar to `*` in vim)
    }

    -- Define custom highlights for the cursors (adjust to fit your theme)
    vim.g.VM_Mono_hl = "Cursor" -- Highlight for individual cursors
    vim.g.VM_Extend_hl = "Cursor" -- When extending selection
    vim.g.VM_Cursor_hl = "Cursor" -- The main cursor's visual look

    -- Additional colors for highlighting different cursor states
    vim.cmd([[
      highlight VM_Mono guibg=#5f5f87 guifg=white
      highlight VM_Extend guibg=#875f5f guifg=white
      highlight VM_Cursor guibg=#5f875f guifg=white
    ]])
  end,
}
