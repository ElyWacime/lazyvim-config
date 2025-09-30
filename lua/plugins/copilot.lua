return {
  -- Copilot inline suggestions
  {
    "github/copilot.vim",
    cmd = "Copilot",
    build = ":Copilot setup",
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- requires the official Copilot plugin
    },
    build = "make tiktoken", -- optional, for better token handling
    config = function()
      require("CopilotChat").setup({
        debug = false,
        show_help = "yes",
      })
    end,
  },
}
