vim.cmd("let g:netrw_liststyle = 3")
local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2 -- two spaces for tab
opt.shiftwidth = 2 -- 2 spaces for indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true --copy indent from current line when starting new one

opt.ignorecase = true
opt.smartcase = true

vim.g.clipboard = {
    name = 'myClipboard',
    copy = {
        ['+'] = {'xclip', '-selection', 'clipboard'},
        ['*'] = {'xclip', '-selection', 'clipboard'},
    },
    paste = {
        ['+'] = {'xclip', '-selection', 'clipboard', '-o'},
        ['*'] = {'xclip', '-selection', 'clipboard', '-o'},
    },
    cache_enabled = true,
}

