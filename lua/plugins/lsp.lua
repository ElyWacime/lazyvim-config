return {
  "neovim/nvim-lspconfig",
  dependencies = { "mason-org/mason.nvim", "mason-org/mason-lspconfig.nvim" },
  config = function()
    -- Ensure that Mason and Mason-LSPconfig are set up
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "clangd", "pyright", "lua_ls" }, -- List your LSP servers here
    })

    -- Set up LSP servers using lspconfig
    local lspconfig = require("lspconfig")

    -- Configuring clangd (C/C++)
    lspconfig.clangd.setup({
      -- You can add additional settings here
    })

    -- Configuring pyright (Python)
    lspconfig.pyright.setup({
      -- You can add additional settings here
    })

    -- Configuring tsserver (JavaScript/TypeScript)
    lspconfig.tsserver.setup({
      -- You can add additional settings here
    })

    -- Configuring lua_ls (Lua)
    lspconfig.lua_ls.setup({
      -- You can add additional settings here
    })
  end,
}
