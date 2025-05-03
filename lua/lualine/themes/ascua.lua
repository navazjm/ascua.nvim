-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

local cfg = require("ascua.config")
local colors = {
    fg = "#DCDCCC", -- white, normal mode
    bg = "#282828",
    insert = "#DFC47D", -- yellow
    visual = "#8FAF9F", -- mint
    replace = "#FFCFAF", -- orange
    command = "#CC9393", -- red
    inactive = "#6C8EBF", -- blue
    terminal = "#7F9F7F", -- green
}

local ascua = {
    normal = {
        a = { fg = colors.fg, bg = cfg.opts.transparent and "NONE" or colors.bg },
        b = { fg = colors.fg, bg = cfg.opts.transparent and "NONE" or colors.bg },
        c = { fg = colors.fg, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    insert = {
        a = { fg = colors.insert, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    visual = {
        a = { fg = colors.visual, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    replace = {
        a = { fg = colors.replace, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    command = {
        a = { fg = colors.command, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    inactive = {
        a = { fg = colors.inactive, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
    terminal = {
        a = { fg = colors.terminal, bg = cfg.opts.transparent and "NONE" or colors.bg },
    },
}

return ascua
