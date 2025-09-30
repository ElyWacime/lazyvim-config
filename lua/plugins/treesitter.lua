return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- opts.highlight = { enable = true }
      opts.indent = { enable = true }

      -- ensure common languages are always installed
      opts.ensure_installed = {
        -- basics
        "bash",
        "vim",
        "vimdoc",
        "lua",
        "query",
        "regex",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",

        -- systems
        "c",
        "cpp",
        "cmake",
        "make",
        "dockerfile",

        -- scripting
        "python",
        "perl",
        "ruby",
        "php",

        -- config / data
        "xml",
        "csv",

        -- extras
        "gitcommit",
        "gitignore",
        "diff",
      }

      return opts
    end,
  },
}
