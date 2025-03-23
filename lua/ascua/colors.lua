-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

local colors = {}
colors.get_colors = function()
    local mycolors = {
        fg_primary = "#DCDCCC",
        bg_primary = "#282828",
        bg_secondary = "#202020",
        black = "#0C0C0C",
        gray = "#8A8A8A",
        light_gray = "#585858",
        lighter_gray = "#DEDEDE",
        white = "#FFFFFF",
        blue = "#8CD0D3",
        red = "#CC9393",
        mint = "#8FAF9F",
        yellow = "#DFC47D",
        orange = "#FFCFAF",
        green = "#7F9F7F",
        cyan = "#8CD0D3",
        magenta = "#BB88BB",
        error_red = "#DCA3A3",
        warning_yellow = "#DFC47D",
        fg_cursor = "#8FAF9F",
        fg_bracket = "#9F9D6D",
        bg_active_tab = "#414141",
        tab_border = "#80D4B2",
        fg_status = "#E0E0E0",
        fg_inactive_tab = "#7F7F7F",
    } ---@type table<string,string>

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require("ascua.config")
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend("force", mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
