-- .luacheckrc

std = "luajit" -- Matches LuaJIT (adjust if using different Lua versions)
max_line_length = 120
indent_size = 4
indent_style = "space"
quotes = "double"
trailing_whitespace = false
end_of_line = "unix"

-- Enforce parentheses for function calls
extra = {
    force_call_parentheses = true,
}

-- Disable sorting for 'require' statements
disable = {
    "unused_require",
}

-- Ignore stylistic warnings that Stylua will handle
ignore = {
    "631", -- Unused variables (Stylua reformats these)
}

globals = {
    "vim", -- Tell luacheck to recognize vim as a global
    -- Common Neovim highlight groups
    "Normal",
    "NormalFloat",
    "Cursor",
    "CursorLine",
    "LineNr",
    "CursorLineNr",
    "SignColumn",
    "WinSeparator",
    "Visual",
    "MatchParen",
    "Pmenu",
    "PmenuSel",
    "PmenuSbar",
    "PmenuThumb",
    "StatusLine",
    "StatusLineNC",
    "TabLine",
    "TabLineSel",
    "TabLineFill",
    "FloatBorder",
    "Comment",
    "Constant",
    "String",
    "Number",
    "Boolean",
    "Identifier",
    "Function",
    "Statement",
    "Operator",
    "Keyword",
    "PreProc",
    "Type",
    "Special",
    "Delimiter",
    "DiffAdd",
    "DiffDelete",
    "DiffChange",
    "DiffText",
    "DiagnosticError",
    "DiagnosticWarn",
    "DiagnosticInfo",
    "DiagnosticHint",
    "DiagnosticUnderlineError",
    "DiagnosticUnderlineWarn",
    "DiagnosticUnderlineInfo",
    "DiagnosticUnderlineHint",
    "GitSignsAdd",
    "GitSignsChange",
    "GitSignsDelete",
    "LspReferenceText",
    "LspReferenceRead",
    "LspReferenceWrite",
    "LspInlayHint",
    "CmpItemKindFunction",
    "CmpItemKindMethod",
    "CmpItemKindVariable",
    "CmpItemKindKeyword",
    "CmpItemAbbrMatch",
    "TelescopeBorder",
    "TelescopeSelection",
    "TelescopeMatching",
}
