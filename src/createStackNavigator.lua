local Roact = require(script.Parent.Roact)
local Llama = require(script.Parent.Libraries.Llama)

local Navigator = require(script.Parent.Navigator)
local Screen = require(script.Parent.Screen)

function createStackNavigator()
	local function _navigate()
		
	end

	local navigation = {
		navigate = function(screen)

		end
	}

	local stack = {
		Navigator = function(props)
			return Roact.createElement(Navigator, Llama.Dictionary.merge(props, { navigation = navigation }))
		end,
		Screen = function(props)
			return Roact.createElement(Screen, Llama.Dictionary.merge(props, { navigation = navigation }))
		end,
	}

	return stack
end

return createStackNavigator
