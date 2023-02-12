local tw = C_CVar.GetCVar("textLocale")
if tw ~= "zhTW" then return end

local function AchievementFont_Small_Fix()
	AchievementFont_Small:SetShadowColor(0, 0, 0)
	AchievementFont_Small:SetShadowOffset(1, -1)
end

local function AchievementButton_Localize_Fix(button)
	button.DateCompleted:SetPoint("TOP", button.Shield, "BOTTOM", -2, 6)
end

local frame = CreateFrame("FRAME")
	frame:RegisterEvent("ADDON_LOADED")
		frame:SetScript("OnEvent", function(self, event, addon)
		if event == "ADDON_LOADED" then
			if addon == "Blizzard_AchievementUI" then
				AchievementFont_Small_Fix()
				hooksecurefunc("AchievementButton_Localize", AchievementButton_Localize_Fix)
			end
		end
	end)