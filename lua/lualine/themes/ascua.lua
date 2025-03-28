-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

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
        a = { fg = colors.fg, bg = colors.bg },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
    },
    insert = {
        a = { fg = colors.insert, bg = colors.bg },
    },
    visual = {
        a = { fg = colors.visual, bg = colors.bg },
    },
    replace = {
        a = { fg = colors.replace, bg = colors.bg },
    },
    command = {
        a = { fg = colors.command, bg = colors.bg },
    },
    inactive = {
        a = { fg = colors.inactive, bg = colors.bg },
    },
    terminal = {
        a = { fg = colors.terminal, bg = colors.bg },
    },
}

return ascua
