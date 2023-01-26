-- force load
LoadAddOn("Blizzard_AchievementUI")

-- copy origin code
function AchievementButton_Localize(button)
	--button.DateCompleted:SetWidth(80);
	--button.DateCompleted:SetPoint("TOP", "$parent", "BOTTOM", -2, 6);
	--button.DateCompleted:SetJustifyH("CENTER");
	
	-- use correct font object with shadow offset
	button.Description:SetFontObject("GameFontHighlight")
	button.HiddenDescription:SetFontObject("GameFontHighlight")
	
	--button.Shield:SetPoint("TOPRIGHT", -10, 0);
	--button.Tabard:SetPoint("TOPRIGHT", -7, -4);
end

--[[
AchievementFrameSummary_LocalizeButton = function() end
AchievementButton_LocalizeMiniAchievement = function() end
AchievementButton_LocalizeProgressBar = function() end
AchievementButton_LocalizeMetaAchievement = function() end
AchievementFrame_LocalizeCriteria = function() end
AchievementCategoryButton_Localize = function() end
AchievementButton_Localize = function() end
AchievementComparisonButton_Localize = function() end
]]--

local frame = CreateFrame("Frame")
	frame:RegisterEvent("ADDON_LOADED")
	frame:SetScript("OnEvent", function() LoadAddOn("Blizzard_AchievementUI") end)
