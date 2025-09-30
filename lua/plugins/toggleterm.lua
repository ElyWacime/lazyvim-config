return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 10,
    open_mapping = [[<C-\>]],
    shading_factor = 2,
    direction = "float",
    float_opts = {
      border = "curved",
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Terminal helper
    local Terminal = require("toggleterm.terminal").Terminal
    local terminals = {}
    local index = 1

    -- New terminal
    vim.keymap.set("n", "<leader>tn", function()
      local term = Terminal:new()
      table.insert(terminals, term)
      index = #terminals
      term:toggle()
    end, { desc = "New Terminal" })

    -- Next terminal
    vim.keymap.set("n", "<leader>tv", function()
      if #terminals == 0 then
        return
      end
      index = index % #terminals + 1
      terminals[index]:toggle()
    end, { desc = "Next Terminal" })

    -- Previous terminal
    vim.keymap.set("n", "<leader>tc", function()
      if #terminals == 0 then
        return
      end
      index = (index - 2) % #terminals + 1
      terminals[index]:toggle()
    end, { desc = "Previous Terminal" })

    -- Close current terminal (Normal mode)
    vim.keymap.set("n", "<leader>tx", function()
      if #terminals == 0 then
        return
      end
      if terminals[index] then
        terminals[index]:shutdown() -- ✅ kill process + buffer
        table.remove(terminals, index)
        if index > #terminals then
          index = #terminals
        end
      end
    end, { desc = "Close Current Terminal" })

    -- Close current terminal (Terminal mode)
    vim.keymap.set("t", "<leader>tx", function()
      vim.api.nvim_feedkeys(
        vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true),
        "n",
        true
      )
      vim.schedule(function()
        if #terminals == 0 then
          return
        end
        if terminals[index] then
          terminals[index]:shutdown() -- ✅ kill process + buffer
          table.remove(terminals, index)
          if index > #terminals then
            index = #terminals
          end
        end
      end)
    end, { desc = "Close Current Terminal" })

    -- Escape to Normal mode inside terminal
    vim.cmd([[
      tnoremap <Esc> <C-\><C-n>
    ]])
  end,
}
