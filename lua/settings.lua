--[[
  File: settings.lua
  Description: Base settings for neovim
  Info: Use <zo> and <zc> to open and close foldings
]]

require "helpers/globals"

-- Set associating between turned on plugins and filetype
cmd[[filetype plugin on]]

-- Disable comments on pressing Enter
cmd[[autocmd FileType * setlocal formatoptions-=cro]]

-- General {{{
opt.encoding = 'utf-8'
opt.history=1000
-- }}}

-- Tabs {{{
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
opt.autoindent = true
-- }}}

-- Clipboard {{{
opt.clipboard = 'unnamedplus' -- Use system clipboard
opt.fixeol = false -- Turn off appending new line in the end of a file
-- }}}

-- Folding {{{
opt.foldmethod = 'syntax'
-- }}}

-- Search {{{
opt.ignorecase = true               -- Ignore case if all characters in lower case
opt.joinspaces = false              -- Join multiple spaces in search
opt.smartcase = true                -- When there is a one capital letter search for exact match
opt.showmatch = true                -- Highlight search instances
opt.incsearch = true                -- Allowing to see search results as typing
opt.hlsearch = true                 -- Highlight search result in the windows
-- }}}

-- Window {{{
opt.splitbelow = true               -- Put new windows below current
opt.splitright = true               -- Put new vertical splits to right
opt.number = true                   -- Display line numbers in the left margin of each window
opt.cursorline = true               -- Highlight the current line in the window
-- }}}

-- Wild Menu {{{
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignorecase = true
-- }}}

-- Default Plugins {{{
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    g["loaded_" .. plugin] = 1
end
-- }}}
