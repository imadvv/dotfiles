local options = {}
-- shell
vim.opt.shell = "/usr/bin/fish"

-- Number
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"

-- backup
--
vim.o.undofile = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- Command line

vim.opt.shortmess:append("I")
vim.opt.cmdheight = 1
vim.opt.hidden = true
vim.opt.history = 300
vim.opt.updatetime = 200
vim.opt.smd = false -- Don't show mode in cmdline

-- Tabs & Indent

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.smarttab = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.cmd('filetype plugin indent on')

-- appearance

vim.opt.cursorlineopt = { "number" } -- Highlighting the number where the cursor is on
vim.opt.cursorline = true
vim.opt.showmode = true
vim.opt.wrap = false
vim.opt.ruler = false
vim.opt.signcolumn = "yes"
vim.opt.fillchars = 'eob: ' 
vim.opt.termguicolors = true

-- scroll

vim.opt.scrolloff = 6

-- sreach
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.infercase = true
vim.opt.showmatch = true
vim.opt.smartcase = true

-- statusline 

vim.opt.laststatus = 3

-- Conceal 

vim.opt.conceallevel = 2

-- Editing

vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.virtualedit = 'block'
vim.opt.formatoptions = 'qjl1'
vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = "marker"
vim.opt.confirm = true


-- window
vim.opt.splitright = true
vim.opt.splitright = true

-- extra
vim.opt.winblend = 10
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.list = true


-- netrw settings
vim.g.netrw_liststyle = 3
vim.g.netrw_sizestyle = "H"
vim.g.netrw_altfile = 1
vim.g.netrw_banner = 0







