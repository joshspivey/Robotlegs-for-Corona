--[[
	Copyright (c) 2011 the original author or authors

	Permission is hereby granted to use, modify, and distribute this file
	in accordance with the terms of the license agreement accompanying it.
--]]

HealthText = {}

function HealthText:new(x, y, text)
	local healthText = display.newText("", 0, 0, native.systemFont, 12)
	healthText:setTextColor(255, 255, 255)
	healthText:setReferencePoint(display.TopLeftReferencePoint)
	healthText.x = x
	healthText.y = y
	healthText.text = text
	healthText.size = 16
	healthText.classType = "HealthText"
	
	
	-- from 0 to 1
	function healthText:showHitPoints(value, max)
		if(value == nil) then value = 0 end
		if(max == nil) then max = 0 end
		healthText.text = value .. "/" .. max
		local percent = value / max
		if(percent > -1 and percent < .21) then
			healthText:setTextColor(255, 0, 0)
		elseif(percent >= .21 and percent <= .5) then
			healthText:setTextColor(255, 255, 0)
		else
			healthText:setTextColor(255, 255, 255)
		end
	end
	
	return healthText
end

return HealthText