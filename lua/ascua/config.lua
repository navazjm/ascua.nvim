-- Copyright (c) 2025 Ascua.nvim
-- MIT license, see LICENSE for more details.

local config = {}

local defaults = {
    bold_styles = false,
    color_overrides = {},
    group_overrides = {},
    italic_comments = false,
    underline_links = false,
    terminal_colors = true,
    transparent = false,
}

config.opts = {}

---@param user_opts? table
config.setup = function(user_opts)
    -- backwards compatibility: let users still set settings with global vars
    local global_settings_opts = vim.tbl_extend("force", defaults, {
        bold_styles = (vim.g.ascua_bold_styles == true or vim.g.ascua_bold_styles == 1),
        italic_comments = (vim.g.ascua_italic_comment == true or vim.g.ascua_italic_comment == 1),
        terminal_colors = (vim.g.ascua_terminal_colors == true or vim.g.ascua_terminal_colors == 1),
        underline_links = (vim.g.ascua_underline_links == true or vim.g.ascua_underline_links == 1),
        transparent = (vim.g.ascua_transparent == true or vim.g.ascua_transparent == 1),
    })

    -- but override global vars settings with setup() settings
    config.opts = vim.tbl_extend("force", global_settings_opts, user_opts or {})

    -- setting transparent to true removes the default background
    if config.opts.transparent then
        config.opts.color_overrides.bg_primary = "NONE"
    end
end

-- initialize config
config.setup()

return config
