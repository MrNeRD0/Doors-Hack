local Userinputservice = game:GetService("UserInputService")   
if not Userinputservice.TouchEnabled then
    local shears = game:GetObjects("rbxassetid://12685082209")[1]
    shears.Parent = game.Players.LocalPlayer.Backpack
    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)
    shears.Grip = newCFrame

    local tool = shears

    local useAnimation = tool.Animations.use

    local function onButton1Down()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            if target:IsA("Model") then
                if target.Parent ~= game.Workspace.CurrentRooms then
                    target:Destroy()
                end
            else
                local parentModel = target:FindFirstAncestorWhichIsA("Model")
                if parentModel then
                    if parentModel.Parent ~= game.Workspace.CurrentRooms then
                        parentModel:Destroy()
                    end
                end
            end
        else
            return
        end
        local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                if not Sound then
                    Sound = Instance.new("Sound")
                    Sound.PlaybackSpeed = 1.25
                    Sound.SoundId = "rbxassetid://9118823101"
                    Sound.Parent = tool
                end
                animator:LoadAnimation(useAnimation):Play()
                Sound:Play()
                wait(0.5)
                Sound:Play()
            end
        end
    end
    tool.Activated:Connect(onButton1Down)
else
    local shears = game:GetObjects("rbxassetid://12685082209")[1]
    shears.Parent = game.Players.LocalPlayer.Backpack
    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)
    shears.Grip = newCFrame

    local tool = shears

    local useAnimation = tool.Animations.use

    local function onTouchStart()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            if target:IsA("Model") then
                print(target.Name)
                if target.Parent ~= game.Workspace.CurrentRooms then
                    target:Destroy()
                end
            else
                local parentModel = target:FindFirstAncestorWhichIsA("Model")
                if parentModel then
                    print(parentModel.Name)
                    if parentModel.Parent ~= game.Workspace.CurrentRooms then
                        parentModel:Destroy()
                    end
                end
            end
        else
            return
        end
        local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animator = humanoid:FindFirstChildOfClass("Animator")
            if animator then
                if not Sound then
                    Sound = Instance.new("Sound")
                    Sound.PlaybackSpeed = 1.25
                    Sound.SoundId = "rbxassetid://9118823101"
                    Sound.Parent = tool
                end
                animator:LoadAnimation(useAnimation):Play()
                Sound:Play()
                wait(0.5)
                Sound:Play()
            end
        end
    end
    -- Connect the "onTouchStart" function to the tool's "Activated" event
    tool.Activated:Connect(onTouchStart)
end
