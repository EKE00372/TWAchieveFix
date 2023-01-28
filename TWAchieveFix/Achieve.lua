LoadAddOn("Blizzard_AchievementUI")

local tw = C_CVar.GetCVar("textLocale")
if tw ~= zhTW then return end

local function AchievementButton_Localize_Fix(button)
	button.Description:SetFontObject("GameFontHighlight")
	button.HiddenDescription:SetFontObject("GameFontHighlight")
	button.DateCompleted:SetPoint("TOP", button.Shield, "BOTTOM", -2, 6)
end

hooksecurefunc("AchievementButton_Localize", AchievementButton_Localize_Fix)


local function AchievementFrame_LocalizeCriteria_Fix(frame)
	frame.Name:SetFontObject("GameFontHighlight")
end

hooksecurefunc("AchievementFrame_LocalizeCriteria", AchievementFrame_LocalizeCriteria_Fix)
