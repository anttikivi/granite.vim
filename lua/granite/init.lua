-- SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
--
-- SPDX-License-Identifier: GPL-3.0-or-later

local M = {}

---@class granite.Config
M.defaults = {
    ---Controls whether the color scheme sets the background color. Set to
    ---`true` to enable transparent background in Neovim.
    ---@type boolean
    transparent = false,
}

M.config = M.defaults
M.colors = require("granite.colors")

local did_set_up = false

---@param opts? granite.Config
function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
    did_set_up = true
end

---@param opts? granite.Config
---@return granite.Config
function M.extend(opts)
    return opts and vim.tbl_deep_extend("force", {}, M.config, opts) or M.config
end

---@param opts? granite.Config
function M.load(opts)
    if not did_set_up then
        M.setup()
        did_set_up = true
    end

    opts = M.extend(opts)
    local colors = M.colors[vim.o.background]

    -- Clear highlights when using another color scheme.
    if vim.g.colors_name then
        vim.cmd([[hi clear]])
    end

    vim.g.colors_name = "granite"

    for group, hl in pairs(require("granite.highlights").groups(colors, opts)) do
        hl = type(hl) == "string" and { link = hl } or hl --[[@as vim.api.keyset.highlight]]
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
