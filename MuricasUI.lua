MuricasUI = LibStub("AceAddon-3.0"):NewAddon("MuricasUI", "AceConsole-3.0", "AceEvent-3.0")
MuricasUI:RegisterChatCommand("muri", "SlashCommandProcessor")

local GUI = LibStub("AceGUI-3.0")

function MuricasUI:PLAYER_ENTERING_WORLD(event, ...)
    MuricasUI:Print("Entering world")

    MuricasUI:PositionFrames()
end

function MuricasUI:ShowBars()
    MainMenuBar:Show()
end

function MuricasUI:HideBars()
    MainMenuBar:Hide()
end

function MuricasUI:PositionFrames()
    --PlayerFrame:SetPoint("LEFT", 525, -37)
    --TargetFrame:SetPoint("CENTER", -418, -37)

    PlayerFrame:ClearAllPoints();
    PlayerFrame:SetPoint("RIGHT", UIParent, "CENTER", -550, -100);
    PlayerFrame:SetUserPlaced(true);
 
    TargetFrame:ClearAllPoints();
    TargetFrame:SetPoint("RIGHT", UIParent, "CENTER", -290, -100);
    TargetFrame:SetUserPlaced(true);
end

function MuricasUI:Experiment()
    -- GameTooltip:SetBackdrop( {
    --     bgFile=nil,
    --     edgeFile=nil, 
    --     tile = true, tileSize = 32, edgeSize = 16,
    --      insets = { left = 4, right = 4, top = 4, bottom = 4 }
    --     })
        GameTooltip:SetBackdropBorderColor(0,0,0,0)
end

MuricasUI:RegisterEvent("PLAYER_ENTERING_WORLD")





function MuricasUI:SlashCommandProcessor(input)
    MuricasUI:Print("Slash command " ..input)
    if(input == "showbars") then
        MuricasUI:ShowBars()
    end
    if(input == "hidebars") then
        MuricasUI:HideBars()
    end
    if(input == "positionframes") then
        MuricasUI:PositionFrames()
    end
    if(input == "experiment") then
        MuricasUI:Experiment()
    end
end