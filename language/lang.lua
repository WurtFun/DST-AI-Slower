
--if you want help me translation, please contact support@lk1337 or support@wurt.fun
--如果你愿意帮助翻译，请联系support@lk1337.top或support@wurt.fun

local zh_CN = {
    ["Modify AI Update Interval"] = "AI更新间隔",
    ["AI Update Interval Multiplier"] = "更新间隔倍数",
    ["1x"] = "1x(无变化)",
    ["2x"] = "2x",
    ["3x"] = "3x",
    ["4x"] = "4x",
    ["5x"] = "5x(默认)",
    ["6x"] = "6x",
    ["7x"] = "7x",
    ["8x"] = "8x",
    ["9x"] = "9x",
    ["10x"] = "10x(土豆)",
    ["Hover"] = "此数越大，服务器越流畅"
}

local en_US = {
    ["Modify AI Update Interval"] = "Modify AI Update Interval",
    ["AI Update Interval Multiplier"] = "Update Interval Multiplier",
    ["1x"] = "1x(Nochange)",
    ["2x"] = "2x",
    ["3x"] = "3x",
    ["4x"] = "4x",
    ["5x"] = "5x(default)",
    ["6x"] = "6x",
    ["7x"] = "7x",
    ["8x"] = "8x",
    ["9x"] = "9x",
    ["10x"] = "10x(Potato)",
    ["Hover"] = "Modify the update interval of all creature AI.\n\nHigher values reduce server load."
}

local function GetConfigDescription(config_data)
    local language = GetPlayerLanguage()
    if language == "zh_CN" then
        return zh_CN[config_data.name] or config_data.name
    elseif language == "en_US" then
        return en_US[config_data.name] or config_data.name
    else
        return config_data.name
    end
end

return {
    GetConfigDescription = GetConfigDescription,
}