-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.number = true -- Show the absolute number on the current line

-- Force filetype detection for common languages
vim.filetype.add({
	extension = {
		-- scripting
		sh = "sh",
		bash = "bash",
		py = "python",
		rb = "ruby",
		pl = "perl",
		php = "php",

		-- web / frontend
		html = "html",
		htm = "html",
		css = "css",
		js = "javascript",
		cjs = "javascript",
		mjs = "javascript",
		ts = "typescript",
		tsx = "tsx",
		jsx = "javascriptreact",
		vue = "vue",
		svelte = "svelte",

		-- data / config
		json = "json",
		jsonc = "jsonc",
		yaml = "yaml",
		yml = "yaml",
		toml = "toml",
		xml = "xml",
		csv = "csv",
		ini = "dosini",
		conf = "conf",

		-- markdown / docs
		md = "markdown",
		markdown = "markdown",
		rst = "rst",

		-- lua / vim
		lua = "lua",
		vim = "vim",

		-- systems / compiled
		c = "c",
		h = "c",
		cpp = "cpp",
		cxx = "cpp",
		cc = "cpp",
		hpp = "cpp",
		java = "java",
		kt = "kotlin",
		rs = "rust",
		go = "go",
		swift = "swift",
		scala = "scala",
		cs = "cs",

		-- docker / infra
		Dockerfile = "dockerfile",
		tf = "terraform",
	},
})

vim.treesitter.language.register("tsx", "typescriptreact")
vim.treesitter.language.register("javascript", "javascriptreact")
