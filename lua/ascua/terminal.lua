-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

local terminal = {}

terminal.load = function(colors)
    -- dark
    vim.g.terminal_color_0 = colors.black
    vim.g.terminal_color_8 = colors.light_gray

    -- light
    vim.g.terminal_color_7 = colors.lighter_gray
    vim.g.terminal_color_15 = colors.lighter_gray

    -- colors
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_9 = colors.red

    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_10 = colors.green

    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_11 = colors.yellow

    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_12 = colors.blue

    vim.g.terminal_color_5 = colors.magenta
    vim.g.terminal_color_13 = colors.magenta

    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_14 = colors.cyan
end

return terminal
