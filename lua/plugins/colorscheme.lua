return {

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  { "catppuccin/nvim", name = "catppuccin" },
  { "morhetz/gruvbox" },
  { "EdenEast/nightfox.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },

  -- More great ones
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        theme = "wave", -- 🌊 This sets kanagawa-wave
        background = {
          dark = "wave",
          light = "lotus",
        },
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
  { "navarasu/onedark.nvim" },
  { "shaunsingh/nord.nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "olimorris/onedarkpro.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "loctvl842/monokai-pro.nvim" },
  { "kvrohit/mellow.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "marko-cerovac/material.nvim" },
}
