--[[
deLaRive init Script
TODO: better deLaRive.lua header 
]]--

-- LightBulb Brightness in percent
function setBulb(brightness)

end

-- indicator LED on/off 
function iLED(setOn, setFade)
	-- TODO: implement fading
	if (setOn) then 
		gpio.write(PIN_iLED, gpio.HIGH)
	else
		gpio.write(PIN_iLED, gpio.LOW)
	end
end

function initialise()
	gpio.mode(PIN_iLED, gpio.OUTPUT)
end

function main()
	-- body


end