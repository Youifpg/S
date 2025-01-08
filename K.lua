local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local head = character:WaitForChild("Head")
local humanoid = character:WaitForChild("Humanoid")
local playerStats = player:WaitForChild("PlayerStats")
local hasShot = playerStats:WaitForChild("HasShot")

local waitforacatchtime = 0.5
local isFollowingBall = true
local scriptEnabled = true

hasShot.Changed:Connect(function(value)
    if value == true then
        scriptEnabled = false
        task.wait(1)
        scriptEnabled = true
    end
end)

local function teleportPlayerToBall(ball)
    if (humanoidRootPart.Position - ball.Position).Magnitude <= 25 then
        if ball.Position.Y >= head.Position.Y then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid:Move(Vector3.new(0, 50, 0))
        end
        
        game:GetService("ReplicatedStorage").Packages.Knit.Services.BallService.RE.Dive:FireServer()

        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://18694494525"
        humanoid:LoadAnimation(animation):Play()

        humanoidRootPart.CFrame = ball.CFrame
    end
end

while task.wait() do
    if scriptEnabled and isFollowingBall then
        local ball = Workspace:FindFirstChild("Football") and Workspace.Football:FindFirstChild("Hitbox")
        if ball and (humanoidRootPart.Position - ball.Position).Magnitude <= 25 then
            teleportPlayerToBall(ball)
            task.wait(waitforacatchtime)
        end
    end
end
