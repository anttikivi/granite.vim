-- SPDX-FileCopyrightText: © 2026 Antti Kivi <antti@anttikivi.com>
--
-- SPDX-License-Identifier: GPL-3.0-or-later

local hsluv = require("hsluv")
local palette = require("palette")

local indent = 4

---@param c granite.Color
---@return string
local function convert(c)
    return hsluv.hsluv_to_hex({ c.h, c.s, c.l })
end

---@param c granite.Color
---@return string
local function convert_brighter(c)
    return hsluv.hsluv_to_hex({ c.h, math.min(c.s + 20, 100), math.min(c.l + 5, 100) })
end

---@param file string
local function exists(file)
    local ok, err, code = os.rename(file, file)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    return ok, err
end

---@param path string
---@return boolean
local function isdir(path)
    return exists(path .. "/")
end

---@param path string
---@param comment string
local function prepend_spdx(path, comment)
    local f = assert(io.open(path, "r"))
    local contents = f:read("*a")
    f:close()

    local spdxf = assert(io.open("spdx.txt", "r"))
    local prefix_lines = {}

    for line in spdxf:lines() do
        if line == "" then
            table.insert(prefix_lines, comment)
        else
            table.insert(prefix_lines, comment .. " " .. line)
        end
    end

    table.insert(prefix_lines, "\n")

    local tmp_path = path .. ".tmp"
    local dest = assert(io.open(tmp_path, "w"))
    dest:write(table.concat(prefix_lines, "\n"))
    dest:write(contents)
    dest:close()
    assert(os.rename(tmp_path, path))
end

local function main()
    ---@type string[]
    local keys = {}
    for k in pairs(palette.dark) do
        table.insert(keys, k)
    end
    table.sort(keys)

    local output = {
        "-- This file is generated using generate.lua. Do not edit manually.",
        "",
        "return {",
        "    ---@type granite.Colors",
        "    dark = {",
    }

    for _, k in ipairs(keys) do
        local v = palette.dark[k]
        table.insert(output, string.format('%s%s = "%s",', string.rep(" ", indent * 2), k, convert(v)))
    end

    table.insert(output, "    },")
    table.insert(output, "    ---@type granite.Colors")
    table.insert(output, "    light = {")

    for _, k in ipairs(keys) do
        local v = palette.light[k]
        table.insert(output, string.format('%s%s = "%s",', string.rep(" ", indent * 2), k, convert(v)))
    end

    table.insert(output, "    },")
    table.insert(output, "}")
    table.insert(output, "")

    local file_path = "lua/granite/colors.lua"
    local check_file = io.open(file_path, "r")
    if check_file ~= nil then
        check_file:close()
        os.remove(file_path)
    end

    local file = assert(io.open(file_path, "w"), "failed to open the color output file")
    file:write(table.concat(output, "\n"))
    file:close()

    prepend_spdx(file_path, "--")
end

local function ghostty()
    if not isdir("extras") then
        os.execute("mkdir extras")
    end
    if not isdir("extras/ghostty") then
        os.execute("mkdir extras/ghostty")
    end

    local p = palette.dark

    local output = {
        string.format("background = %s", convert(p.bg)),
        string.format("foreground = %s", convert(p.fg)),
        string.format("cursor-color = %s", convert(p.fg_light)),
        string.format("cursor-text = %s", convert(p.bg_light)),
        string.format("selection-background = %s", convert(p.light_gray)),
        string.format("selection-foreground = %s", convert(p.gray)),
        string.format("palette = 0=%s", convert(p.light_gray)),
        string.format("palette = 1=%s", convert(p.red)),
        string.format("palette = 2=%s", convert(p.green)),
        string.format("palette = 3=%s", convert(p.yellow)),
        string.format("palette = 4=%s", convert(p.blue)),
        string.format("palette = 5=%s", convert(p.magenta)),
        string.format("palette = 6=%s", convert(p.cyan)),
        string.format("palette = 7=%s", convert(p.fg_light)),
        string.format("palette = 8=%s", convert(p.gray)),
        string.format("palette = 9=%s", convert_brighter(p.red)),
        string.format("palette = 10=%s", convert_brighter(p.green)),
        string.format("palette = 11=%s", convert_brighter(p.yellow)),
        string.format("palette = 12=%s", convert_brighter(p.blue)),
        string.format("palette = 13=%s", convert_brighter(p.magenta)),
        string.format("palette = 14=%s", convert_brighter(p.cyan)),
        string.format("palette = 15=%s", convert(p.fg)),
    }

    local file_path = "extras/ghostty/granite-dark"
    local check_file = io.open(file_path, "r")
    if check_file ~= nil then
        check_file:close()
        os.remove(file_path)
    end

    local file = assert(io.open(file_path, "w"), "failed to open the color output file")
    file:write(table.concat(output, "\n"))
    file:close()

    prepend_spdx(file_path, "#")

    p = palette.light

    output = {
        string.format("background = %s", convert(p.bg)),
        string.format("foreground = %s", convert(p.fg)),
        string.format("cursor-color = %s", convert(p.fg_light)),
        string.format("cursor-text = %s", convert(p.bg_light)),
        string.format("selection-background = %s", convert(p.light_gray)),
        string.format("selection-foreground = %s", convert(p.gray)),
        string.format("palette = 0=%s", convert(p.light_gray)),
        string.format("palette = 1=%s", convert(p.red)),
        string.format("palette = 2=%s", convert(p.green)),
        string.format("palette = 3=%s", convert(p.yellow)),
        string.format("palette = 4=%s", convert(p.blue)),
        string.format("palette = 5=%s", convert(p.magenta)),
        string.format("palette = 6=%s", convert(p.cyan)),
        string.format("palette = 7=%s", convert(p.fg_light)),
        string.format("palette = 8=%s", convert(p.gray)),
        string.format("palette = 9=%s", convert_brighter(p.red)),
        string.format("palette = 10=%s", convert_brighter(p.green)),
        string.format("palette = 11=%s", convert_brighter(p.yellow)),
        string.format("palette = 12=%s", convert_brighter(p.blue)),
        string.format("palette = 13=%s", convert_brighter(p.magenta)),
        string.format("palette = 14=%s", convert_brighter(p.cyan)),
        string.format("palette = 15=%s", convert(p.fg)),
    }

    file_path = "extras/ghostty/granite-light"
    check_file = io.open(file_path, "r")
    if check_file ~= nil then
        check_file:close()
        os.remove(file_path)
    end

    file = assert(io.open(file_path, "w"), "failed to open the color output file")
    file:write(table.concat(output, "\n"))
    file:close()

    prepend_spdx(file_path, "#")
end

main()
ghostty()
