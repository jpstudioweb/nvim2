local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- spell
opt.spelllang = "en_us,pt_br"

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.softtabstop = 2
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.smartindent = true
opt.smarttab = true

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})
vim.o.updatetime = 250
vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]])

-- line wrapping
opt.wrap = true -- disable line wrapping
-- vim.o.colorcolumn = "80"

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.incsearch = true
opt.hlsearch = true
opt.showmatch = true

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for gruvbox colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
-- vim.cmd("autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi LineNr ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi DiagnosticSignError ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi DiagnosticSignWarning ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi DiagnosticSignInformation ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi DiagnosticSignHint ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi GitSignsAdd ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi GitSignsChange ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi GitSignsDelete ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi NvimTreeNormal ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi NvimTreeNormalNC ctermbg=NONE guibg=NONE")
--

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- background trasnparency
vim.cmd("autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE")

-- Ecoding: UTF-8
opt.encoding = "UTF-8"

-- Integração do triple-quote
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "*.py",
--   command = "!triple-quote %",
-- })
