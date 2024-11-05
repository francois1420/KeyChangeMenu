
-- Example : 
-- {"checkbox", Config.Name, Config.Cmd},
-- {"key_bind", Config.Name, Config.Cmd},
-- {"slider", Config.Name, Config.Cmd, Config.MinValue, Config.MaxValue, Config.Decimal},
local configuration_menu_config = {
    {"Configuration des chars", 
        {
            {"slider", "Engine Volume", "lvs_volume", 0, 1, 2},

            -- LUA Vehicles - Base
            {"key_bind", "Forward", "cl_simfphys_keyforward"},
            {"key_bind", "Reverse", "cl_simfphys_keyreverse"},
            {"key_bind", "Steer Left", "cl_simfphys_keyleft"},
            {"key_bind", "Steer Right", "cl_simfphys_keyright"},
            {"key_bind", "Throttle Modifier", "cl_simfphys_keywot"},
            {"key_bind", "Clutch", "cl_simfphys_keyclutch"},
            {"key_bind", "Gear Up", "cl_simfphys_keygearup"},
            {"key_bind", "Gear Down", "cl_simfphys_keygeardown"},
            {"key_bind", "Handbrake", "cl_simfphys_keyhandbrake"},
            {"key_bind", "Cruise Control", "cl_simfphys_cruisecontrol"},
            {"key_bind", "Lights", "cl_simfphys_lights"},
            {"key_bind", "Foglights", "cl_simfphys_foglights"},
            {"key_bind", "Horn / Siren", "cl_simfphys_keyhorn"},
            {"key_bind", "Start/Stop Engine", "cl_simfphys_keyengine"},
            {"key_bind", "Tilt Backward", "cl_simfphys_key_air_forward"},
            {"key_bind", "Tilt Forward", "cl_simfphys_key_air_reverse"},
            {"key_bind", "Tilt Left", "cl_simfphys_key_air_left"},
            {"key_bind", "Tilt Right", "cl_simfphys_key_air_right"},
            {"key_bind", "Turnsignals", "cl_simfphys_key_turnmenu"},

            -- Cars
            -- {"key_bind", "Throttle", "lvs_car_throttle"},
            -- {"key_bind", "Throttle Modifier", "lvs_car_speed"},
            -- {"key_bind", "Brake", "lvs_car_brake"},
            -- {"key_bind", "Handbrake", "lvs_car_handbrake"},
            -- {"key_bind", "Steer Left", "lvs_car_turnleft"},
            -- {"key_bind", "Steer Right", "lvs_car_turnright"},
            -- {"key_bind", "Toggle Lights", "lvs_car_toggle_lights"},
            -- {"key_bind", "Open Signal Menu", "lvs_car_menu"},
            -- {"key_bind", "Open Siren Menu", "lvs_car_siren"},
            -- {"key_bind", "Change Ammo Type", "lvs_car_swap_ammo"},

            -- Base
            -- {"checkbox", "Show Team Identifier", "lvs_show_identifier"},
            -- {"checkbox", "Show Hit/Kill Marker", "lvs_hitmarker"},
            -- {"checkbox", "Enable HUD Editor", "lvs_edit_hud"},
            -- {"checkbox", "Trail Effects", "lvs_show_traileffects"},
            -- {"checkbox", "Wind/Dust FX/SFX", "lvs_show_effects"},
            -- {"checkbox", "Scrape/Impact FX", "lvs_show_physicseffects"},
            -- {"checkbox", "Bullet near miss SFX", "lvs_bullet_nearmiss"},
            -- {"checkbox", "Mouse-Aim Steering", "lvs_mouseaim"},
            -- {"checkbox", "Edit Mouse-Aim per Type", "lvs_mouseaim_type"},
            -- {"slider", "X Sensitivity", "lvs_sensitivity_x", 0, 10, 1},
            -- {"slider", "Y Sensitivity", "lvs_sensitivity_y", -10, 10, 1},
            -- {"slider", "Return Delta", "lvs_return_delta", 0, 10, 1},

            -- {"key_bind", "Attack", "lvs_lmb"},
            -- {"key_bind", "Zoom", "lvs_rmb"},
            -- {"key_bind", "Select Weapon 1", "lvs_select_weapon1"},
            -- {"key_bind", "Select Weapon 2", "lvs_select_weapon2"},
            -- {"key_bind", "Select Weapon 3", "lvs_select_weapon3"},
            -- {"key_bind", "Select Weapon 4", "lvs_select_weapon4"},

            -- {"key_bind", "Exit Vehicle", "lvs_exit"},
            -- {"key_bind", "Enable Mouse-Wheel Set-Camera-Distance", "lvs_viewzoom"},
            -- {"key_bind", "Set-Camera-Distance => Set-Camera-Height", "lvs_viewheight"},
            -- {"key_bind", "Toggle Thirdperson", "lvs_thirdperson"},
            -- {"key_bind", "Freelook (Hold)", "lvs_freelook"},
            -- {"key_bind", "Toggle Engine", "lvs_startengine"},
            -- {"key_bind", "Toggle Vehicle-specific Function", "lvs_special"},
        },
    },
    {"Configuration des hélicoptères", 
        {
            {"key_bind", "Start", "wac_cl_air_key_Start"},
            {"key_bind", "Roll +", "wac_cl_air_key_Roll_Inc"},
            {"key_bind", "Roll -", "wac_cl_air_key_Roll_Dec"},
            {"key_bind", "Pitch +", "wac_cl_air_key_Pitch_Inc"},
            {"key_bind", "Pitch -", "wac_cl_air_key_Pitch_Dec"},
            {"key_bind", "Throttle +", "wac_cl_air_key_Throttle_Inc"},
            {"key_bind", "Throttle -", "wac_cl_air_key_Throttle_Dec"},
            {"key_bind", "Yaw +", "wac_cl_air_key_Yaw_Inc"},
            {"key_bind", "Yaw -", "wac_cl_air_key_Yaw_Dec"},
            {"key_bind", "Hover", "wac_cl_air_key_Hover"},
            {"key_bind", "Exit", "wac_cl_air_key_Exit"},
            {"key_bind", "FreeView", "wac_cl_air_key_FreeView"},
            {"key_bind", "Camera", "wac_cl_air_key_Camera"},
            {"key_bind", "Fire", "wac_cl_air_key_Fire"},
            {"key_bind", "NexWeapon", "wac_cl_air_key_NextWeapon"},
            {"slider", "Engine Volume", "wac_cl_air_volume", 0, 1, 2},
            {"checkbox", "Arcade Mode", "wac_cl_air_arcade"},
            {"checkbox", "Dynamic View Angle", "wac_cl_air_smoothview"},
            {"checkbox", "Dynamic View Position", "wac_cl_air_shakeview"},
            {"checkbox", "Override Field of View", "wac_cl_air_overridefov"},
            {"checkbox", "Use Mouse", "wac_cl_air_mouse"},
            {"checkbox", "Invert Pitch", "wac_cl_air_mouse_invert_pitch"},
            {"checkbox", "Invert Yaw/Roll", "wac_cl_air_mouse_invert_yawroll"},
            {"checkbox", "Swap Yaw/Roll", "wac_cl_air_mouse_swap"},
            {"slider", "Sensitivity", "wac_cl_air_sensitivity", 0.50, 1.90, 2},
            {"slider", "Field of View", "wac_cl_air_fov", 60, 140, 0},
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
    configFrame:SetTitle("Menu de configuration")
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