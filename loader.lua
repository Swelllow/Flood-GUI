local Build = "58" 
local CurrentBuild = game:GetService("ReplicatedStorage").Config:GetAttribute("BuildVersion")
if Build ~= CurrentBuild then
  warn("Build mismatch bugs and errors may be caused due to this!")
end
local Branch = ...
loadstring(game:HttpGet("https://raw.githubusercontent.com/ImMejor35/Flood-GUI/"..Branch.."/Flood%20GUI%20v3"))(Branch)
