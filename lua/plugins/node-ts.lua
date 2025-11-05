return {
  -- 🧩 TypeScript & JavaScript LSP
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
    },
    opts = {
      servers = {
        -- TypeScript/JavaScript language server
        tsserver = {
          settings = {
            completions = { completeFunctionCalls = true },
          },
        },
      },
    },
  },

  -- 🧠 Autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
    },
  },

  -- 🪄 Snippets (nice for autocompletion)
  { "rafamadriz/friendly-snippets" },

  -- 🧹 Formatter and Linter via null-ls / conform
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd", "eslint_d" },
        typescript = { "prettierd", "eslint_d" },
        json = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
      },
    },
  },

  -- 🐛 Debugging with DAP (optional)
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-vscode-js").setup({
        adapters = { "pwa-node" },
        debugger_path = vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter",
      })
    end,
  },
}
