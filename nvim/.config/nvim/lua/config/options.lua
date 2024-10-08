-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs & indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

--line wrapping
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 10

-- Obsidian stuff
vim.opt.conceallevel = 2

-- Transparrencty
vim.cmd([[hi Normal guibg=0]])
vim.cmd([[hi Normal ctermbg=0]])
vim.cmd([[hi NonText guibg=0]])
vim.cmd([[hi NonText ctermbg=0]])
vim.cmd([[hi NormalNC guibg=0]])
