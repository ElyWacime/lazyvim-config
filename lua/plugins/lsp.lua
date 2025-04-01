return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {}, -- C/C++
      pyright = {}, -- Python
      tsserver = {}, -- JavaScript/TypeScript
      lua_ls = {}, -- Lua
    },
  },
}
