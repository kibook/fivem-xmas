local thisResource = GetCurrentResourceName()

AddEventHandler("onResourceStart", function(resourceName)
	if resourceName ~= thisResource then
		return
	end

	exports.weathersync:setWeatherPattern {
		["clear"] = {
			["clear"] = 60,
			["clouds"] = 40
		},

		["clouds"] = {
			["clouds"] = 20,
			["clear"] = 30,
			["overcast"] = 50
		},

		["overcast"] = {
			["clouds"] = 30,
			["xmas"] = 70
		},

		["xmas"] = {
			["xmas"] = 30,
			["overcast"] = 70
		},
	}

	exports.weathersync:setWeather("xmas", 10.0, false, true)
end)

AddEventHandler("onResourceStop", function(resourceName)
	if resourceName ~= thisResource then
		return
	end

	exports.weathersync:resetWeatherPattern()
	exports.weathersync:resetWeather()
end)
