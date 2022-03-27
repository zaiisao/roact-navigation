local ReplicatedStorage = game:GetService("ReplicatedStorage")

local container = script.Parent.Parent
local roactModule = container:FindFirstChild("Roact")
local Roact = nil

if not roactModule then
	-- If the rbx-ts runtime is around, try loading with that
	local rbxts = ReplicatedStorage:FindFirstChild("rbxts_include")
	if rbxts ~= nil then
		local ts = require(ReplicatedStorage:WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
		Roact = ts.import(script, ts.getModule(script, "roact").src)
	else
		error("Roact Navigation failed to find Roact. Did you make sure Roact is in the same folder?")
	end
else
	Roact = require(roactModule)
end

return Roact
