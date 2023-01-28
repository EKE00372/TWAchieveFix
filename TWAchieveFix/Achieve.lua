LoadAddOn("Blizzard_AchievementUI")

local tw = C_CVar.GetCVar("textLocale")
if tw ~= "zhTW" then return end

local function AchievementButton_Localize_Fix(button)
	button.Description:SetFontObject("GameFontHighlight")
	button.HiddenDescription:SetFontObject("GameFontHighlight")
	button.DateCompleted:SetPoint("TOP", button.Shield, "BOTTOM", -2, 6)
end
hooksecurefunc("AchievementButton_Localize", AchievementButton_Localize_Fix)

function AchievementFrame_LocalizeCriteria (frame)
	frame.Name:SetFontObject("GameFontHighlight")
end
