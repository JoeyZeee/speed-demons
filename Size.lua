while wait(.5) do
	local children = game.Players:GetChildren()
	for i = 1, #children do
		if children[i].Character ~= nil then
		local hum = children[i].Character.Humanoid
		hum.WalkSpeed = children[i].leaderstats.Points.Value/20 + 1
		end
	end
end
