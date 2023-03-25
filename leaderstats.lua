game.Players.PlayerAdded:connect(function(player)
     local leaderstats = Instance.new("Model")
     leaderstats.Name = "leaderstats"
     leaderstats.Parent = player
 
     local money = Instance.new("IntValue") 
     money.Name = "Points" 
     money.Value = 0
     money.Parent = leaderstats 
 local money = Instance.new("IntValue") 
     money.Name = "Prestige" 
     money.Value = 0
	money.Parent = leaderstats 
	local id = 12643779 --put your gamepass id here

	game:GetService("MarketplaceService").PromptGamePassPurchaseFinished:Connect(function(plr,ido,purchased)
		if purchased and ido == id then
			money.Value = money.Value + 1 --set this and the other one to the same number
		end
	end)
local money = Instance.new("BoolValue") 
     money.Name = "DoublePass" 
     money.Value = false
     money.Parent = player
local money = Instance.new("BoolValue") 
     money.Name = "Code" 
     money.Value = false
     money.Parent = player
 end)