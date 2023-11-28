--Common functions for programming
--common.lua
Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

function triggerName(str)
    return string.format('%s:%s', GetCurrentResourceName(), str)
end

-- Stolen from: https://rosettacode.org/wiki/Strip_control_codes_and_extended_characters_from_a_string
function normalizeString(str)

    local s = ""
    for i = 1, str:len() do
        if str:byte(i) >= 32 and str:byte(i) <= 126 then
            s = s .. str:sub(i, i)
        end
    end
    return s

end

exports('normalizeString', normalizeString)

-- Stolen from: https://forums.coronalabs.com/topic/43048-remove-special-characters-from-string/
function urlencode(str)
    if (str) then
        str = string.gsub(str, "\n", "\r\n")
        str = string.gsub(str, "([^%w ])",
                function()
                    return string.format("%%%02X", string.byte)
                end)
        str = string.gsub(str, " ", "+")
    end
    return str
end

exports('urlencode', urlencode)

function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

exports('round', round)

--- @param table table
--- @return boolean
function isTable(table)
    if table ~= nil then
        if type(table) == "table" then
            return true
        end
        return false
    else
        return false
    end
end

exports('isTable', isTable)

--- @param func function
--- @return boolean
function isFunction(func)
    if table ~= nil then
        if type(func) == "function" then
            return true
        end
        return false
    else
        return false
    end
end

exports('isFunction', isFunction)

function getKeys()
    return Keys
end

exports('getKeys', getKeys)

--- @param table table
--- @return number
function tableLength(tb)
    local count = 0
    if isTable(tb) then
        for _ in pairs(tb) do
            count = count + 1
        end
        return count
    end
    return nil
end

exports('tableLength', tableLength)

--- @param table table
--- @return number
function tableLastIterator(table)
    local last = 0
    for i, v in pairs(table) do
        last = i
    end
    return last
end

exports('tableLastIterator', tableLastIterator)

function getConfig()
    return Config
end

exports('getConfig', getConfig)

--Taken from ESX
function dumpTable(table, nb)
    if nb == nil then
        nb = 0
    end

    if type(table) == 'table' then
        local s = ''
        for i = 1, nb + 1, 1 do
            s = s .. "    "
        end

        s = '{\n'
        for k, v in pairs(table) do
            if type(k) ~= 'number' then
                k = '"' .. k .. '"'
            end
            for i = 1, nb, 1 do
                s = s .. "    "
            end
            s = s .. '[' .. k .. '] = ' .. dumpTable(v, nb + 1) .. ',\n'
        end

        for i = 1, nb, 1 do
            s = s .. "    "
        end

        return s .. '}'
    else
        return tostring(table)
    end
end

exports('dumpTable', dumpTable)

function escapeHtml(str)
    str = string.gsub( str, '&', '&amp;' )
    str = string.gsub( str, '<', '&lt;' )
    str = string.gsub( str, '>', '&gt;' )
    str = string.gsub( str, '"', '&quot;' )
    str = string.gsub( str, "'", '&apos;' )
    str = string.gsub( str, "/", '&#47;' )
    return str
end

exports('escapeHtml', escapeHtml)

function randomChance (percent)
    assert(percent >= 0 and percent <= 100) -- sanity check
    return percent >= math.random(1, 100)   -- 1 succeeds 1%, 50 succeeds 50%,
                                            -- 100 always succeeds, 0 always fails
end