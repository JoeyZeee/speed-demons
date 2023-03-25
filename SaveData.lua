local DS = game:GetService("DataStoreService"):GetDataStore("SaveMyData")
game.Players.PlayerAdded:Connect(function(plr)
	wait()
	local plrkey = "id_"..plr.userId
	local savevalue = plr.leaderstats.Points
	local savevalue2 = plr.leaderstats.Prestige
	local savevalue3 = plr.Code

	
	local GetSaved = DS:GetAsync(plrkey)
	if GetSaved then
		savevalue.Value = GetSaved[1]
		savevalue2.Value = GetSaved[2]
		savevalue3.Value = GetSaved[3]
		
	else
		local NumbersForSaving = {savevalue.Value, savevalue2.Value, savevalue3.Value}
		DS:GetAsync(plrkey, NumbersForSaving)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr)
	DS:SetAsync("id_"..plr.userId, {plr.leaderstats.Points.Value, plr.leaderstats.Prestige.Value, plr.Code.Value})
end)