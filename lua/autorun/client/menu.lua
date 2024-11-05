
-- Example : 
-- {"checkbox", Config.Name, Config.Cmd},
-- {"key_bind", Config.Name, Config.Cmd},
-- {"slider", Config.Name, Config.Cmd, Config.MinValue, Config.MaxValue, Config.Decimal},

local configuration_menu_config = {
    {"Example of configuration",
        {
            {"checkbox", "My checkbox", "sv_cheats"},
            {"slider", "My slider", "sbox_maxprops", 0, 300, 0},
        },
    },
    {"Second example of configuration",
        {
            {"checkbox", "My second checkbox", "sv_cheats"},
            {"slider", "My second slider", "sbox_maxprops", 0, 300, 0},
        },
    },
}

local scrw = ScrW()
local scrh = ScrH()

local function AddSpacer(panel)
    local spacer = vgui.Create("DPanel", panel)
    spacer:Dock(TOP)
    spacer:SetHeight(5)
    spacer.Paint = function() end
end

local function OpenConfigMenu()
    local configFrame = vgui.Create("DFrame")
    configFrame:SetSize(scrw * 400 / 1920, scrh * 600 / 1080)
    configFrame:Center()
    configFrame:SetTitle("Configuration menu")
    configFrame:SetVisible(true)
    configFrame:SetDraggable(false)
    configFrame:ShowCloseButton(true)
    configFrame:MakePopup()

    local configFrameScroll = vgui.Create("DScrollPanel", configFrame)
    configFrameScroll:Dock(FILL)

    for _, v in pairs(configuration_menu_config) do
        local categoryName = v[1]
        local categoryConfigs = v[2]

        local categoryLabel = vgui.Create("DLabel", configFrameScroll)
        categoryLabel:SetText(categoryName)
        categoryLabel:Dock(TOP)
        categoryLabel:SizeToContents()
        AddSpacer(configFrameScroll)

        for _, v2 in pairs(categoryConfigs) do
            local configType = v2[1]
            local configName = v2[2]
            local configVar = v2[3]

            local settingPanel = vgui.Create("DPanel", configFrameScroll)
            settingPanel:Dock(TOP)
            settingPanel:SetTall(30)
            settingPanel:SetBackgroundColor(Color(64, 64, 64))
        
            local settingLabel = vgui.Create("DLabel", settingPanel)
            settingLabel:SetText(configName)
            settingLabel:SetWide(100)
            settingLabel:Dock(LEFT)
            settingLabel:SetContentAlignment(5)

            if configType == "checkbox" then
                local checkbox = vgui.Create("DCheckBox", settingPanel)
                checkbox:Dock(FILL)
                checkbox:SetValue(GetConVar(configVar):GetBool())
                checkbox.OnChange = function(self, bVal)
                    RunConsoleCommand(configVar, bVal and "1" or "0")
                end
                checkbox.Paint = function(self, w, h)
                    if self:GetChecked() then
                        draw.RoundedBox(0, 0, 0, w, h, Color(0, 160, 21))
                    else
                        draw.RoundedBox(0, 0, 0, w, h, Color(211, 0, 0))
                    end
                end
            elseif configType == "key_bind" then
                local keyEntry = vgui.Create("DBinder", settingPanel)
                keyEntry:Dock(FILL)
                keyEntry:SetValue(GetConVar(configVar):GetInt())
                keyEntry.OnChange = function(self, iNum)
                    RunConsoleCommand(configVar, iNum)
                end
            elseif configType == "slider" then
                local configMin = v2[4]
                local configMax = v2[5]
                local configDecimal = v2[6]

                local slider = vgui.Create("DNumSlider", settingPanel)
                slider:SetPos(scrw * -110 / 1920, 0)
                slider:SetSize(scrw * 500 / 1920, scrh * 30 / 1080)
                slider:SetMin(configMin)
                slider:SetMax(configMax)
                slider:SetDecimals(configDecimal)
                slider:SetValue(GetConVar(configVar):GetFloat())
                slider:SetConVar(configVar)
            end

            AddSpacer(configFrameScroll)
        end
    end
end

hook.Add("PlayerButtonDown", "KCM_OpenConfigMenu", function(ply, key)
    if CLIENT and key == KEY_F2 and IsFirstTimePredicted() then
        OpenConfigMenu()
    end
end)
