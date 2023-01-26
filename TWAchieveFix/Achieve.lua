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
