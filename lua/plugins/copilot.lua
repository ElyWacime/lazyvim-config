return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = { enabled = false }, -- Disable Copilot panel
      suggestion = { enabled = false }, -- Disable inline text suggestions
    })
  end,
}
