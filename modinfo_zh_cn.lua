local language = {
    English = {
        modname = "AI Slower",
        moddescription =  "Version Groph 1.1.0\nAllows players to modify the AI update interval to reduce server load.",
        modauthor = "WurtFun",
        AI_Update_Interval_Multiplier = "AI Update Interval Multiplier",
        hover_text = "Slow down AI reaction by increasing the update interval.\nServer load will be reduced accordingly."
        No_change = "1x(NoChange)",
        default = "5x(Default)",
        Potato = "10x(Potato)",
    },
    Chinese = {
        modname = "AI减速器",
        moddescription =  "版本 Groph 1.1.0\n减慢AI更新速度让服务器流畅。",
        modauthor = "沃特娱乐",
        AI_Update_Interval_Multiplier = "AI更新间隔",
        hover_text = "数字越大越流畅\n反之亦然"
        No_change = "1x(无变化)",
        default_speed = "5x(默认倍率)",
        Potato = "10x(土豆专用)",
    }
}

local selected_language = GLOBAL.language or "English"
local language_sel = language[selected_language] or language["English"]

name = language_sel.GetConfigDescription({name = "modname"})
description = language_sel.GetConfigDescription({name = "moddescription"})
author = language_sel.GetConfigDescription({name = "modauthor"})
version = "Groph 1.1.0"
api_version = 10
dst_compatible = true
all_clients_require_mod = false
client_only_mod = false
server_only_mod = true

configuration_options = {
    {
        name = "update_interval_multiplier",
        label = language_sel.GetConfigDescription({name = "AI_Update_Interval_Multiplier"}),
        hover = language_sel.GetConfigDescription({name = "hover_text"}),
        options = {
            {description = language_sel.GetConfigDescription({name = "No_change"}), data = 1},
            {description = "2x", data = 2},
            {description = "3x", data = 3},
            {description = "4x", data = 4},
            {description = language_sel.GetConfigDescription({name = "default_speed"}), data = 5},
            {description = "6x", data = 6},
            {description = "7x", data = 7},
            {description = "8x", data = 8},
            {description = "9x", data = 9},
            {description = language_sel.GetConfigDescription({name = "Potato"}), data = 10},
        },
        default = 5,

    },
}