local Roact = require(script.Parent.Roact)

local HEADER_HEIGHT = 30

function Screen(props)
	local name = props.name
	local component = props.component

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Header = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			Text = Roact.createElement("TextLabel", {
				Size = UDim2.fromScale(1, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Text = name,
				TextScaled = true,
			}),
		}),
		BodyContainer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Component = Roact.createElement(component, {
				navigation = {
					
				}
			})
		}),
	})
end

return Screen
