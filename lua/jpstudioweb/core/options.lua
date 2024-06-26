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
opt.cursorline = false -- highlight the current cursor line

-- appearance

-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = false
opt.background = "light" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
-- transparency
-- vim.cmd("autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE")
-- vim.cmd("autocmd ColorScheme * hi NonText ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi SignColumn ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi LineNr ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi DiagnosticSignError ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi DiagnosticSignWarning ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi DiagnosticSignInformation ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi DiagnosticSignHint ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi GitSignsAdd ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi GitSignsChange ctermbg=NONE guibg=NONE")
vim.cmd("autocmd ColorScheme * hi GitSignsDelete ctermbg=NONE guibg=NONE")

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- background transparency
-- vim.cmd("autocmd ColorScheme * hi Normal ctermbg=NONE guibg=NONE")

-- Ecoding: UTF-8
opt.encoding = "UTF-8"

opt.foldenable = false
