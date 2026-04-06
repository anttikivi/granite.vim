-- SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
--
-- SPDX-License-Identifier: GPL-3.0-or-later

local M = {}

---@class granite.Config
M.defaults = {
    ---@type boolean
    transparent = false,
}

local did_set_up = false

---@param opts? granite.Config
function M.setup(opts)
    M.config = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
    did_set_up = true
end

return M
