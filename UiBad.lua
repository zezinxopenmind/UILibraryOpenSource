function library:CriarPagina(name)
	local Fechar = Instance.new("TextButton")
	local library_screen = Instance.new("ScreenGui")
	local Window = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local Top = Instance.new("Frame")
	local NameLibrary = Instance.new("TextLabel")
	
	library_screen.Name = "library_screen"
	library_screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	library_screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Window.Name = "Window"
	Window.Parent = library_screen
	Window.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Window.BorderSizePixel = 0
	Window.Position = UDim2.new(0.243740797, 0, 0.214733541, 0)
	Window.Size = UDim2.new(0, 546, 0, 338)
	
	UIGridLayout.Parent = Window
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 150, 0, 40)

	Top.Name = "Top"
	Top.Parent = library_screen
	Top.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Position = UDim2.new(0.243740797, 0, 0.194357365, 0)
	Top.Size = UDim2.new(0, 546, 0, 20)

	NameLibrary.Name = "NameLibrary"
	NameLibrary.Parent = Top
	NameLibrary.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NameLibrary.BackgroundTransparency = 1.000
	NameLibrary.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NameLibrary.BorderSizePixel = 0
	NameLibrary.Position = UDim2.new(0.316849828, 0, 0, 0)
	NameLibrary.Size = UDim2.new(0, 200, 0, 20)
	NameLibrary.Font = Enum.Font.SourceSans
	NameLibrary.Text = name
	NameLibrary.TextColor3 = Color3.fromRGB(255, 255, 255)
	NameLibrary.TextSize = 14.000
	
	Fechar.Name = "Fechar"
	Fechar.Parent = Top
	Fechar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Fechar.BackgroundTransparency = 1.000
	Fechar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Fechar.BorderSizePixel = 0
	Fechar.Position = UDim2.new(0.954212427, 0, 0, 0)
	Fechar.Size = UDim2.new(0, 25, 0, 20)
	Fechar.Font = Enum.Font.SourceSans
	Fechar.Text = " >"
	Fechar.TextColor3 = Color3.fromRGB(255, 255, 255)
	Fechar.TextSize = 14.000
	Fechar.MouseButton1Down:Connect(function() 
		if toggled then
			toggled = false
			Window:TweenSize(UDim2.new(0, 546, 0, 0), 'In', 'Quad', 0.2)
		else
			toggled = true
			Window:TweenSize(UDim2.new(0, 546, 0, 300), 'In', 'Quad', 0.2)
		end	
	end)
	
	local EpicLibrary = {}
	
	function EpicLibrary:CriarBtn(text, callback)
		local callback = callback or function() end
		local Button = Instance.new("TextButton")

		--Properties:

		Button.Name = "Button"
		Button.Parent = Window
		Button.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0, 0, 0.0443786979, 0)
		Button.Size = UDim2.new(0, 136, 0, 100)
		Button.Font = Enum.Font.SourceSans
		Button.TextColor3 = Color3.fromRGB(255, 255, 255)
		Button.TextSize = 31.000
		Button.TextWrapped = true
		Button.Text = text
		
		Button.MouseButton1Down:Connect(function() 
			pcall(callback)
		end)
	end
	return EpicLibrary
end
