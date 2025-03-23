-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

local ascua = {}
local config = require("ascua.config")
local theme = require("ascua.theme")

-- Pass setup to config module
ascua.setup = config.setup

-- Load colorscheme with a given or default style
---@param style? string
ascua.load = function(style)
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "ascua"

    if config.opts.terminal_colors then
        local terminal = require("ascua.terminal")
        terminal.load(require("ascua.colors").get_colors())
    end

    local background = style or config.opts.style
    if background then
        vim.o.background = background
    end

    theme.set_highlights(config.opts)

    if config.opts.group_overrides then
        for group, val in pairs(config.opts["group_overrides"]) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end
end

return ascua
