local LatestBuild = 58
local CurrentBuild = tonumber(game:GetService("ReplicatedStorage").Config:GetAttribute("BuildVersion"))
if LatestBuild < CurrentBuild then
  warn("Build mismatch bugs and errors may be caused due to this!")
  warn("Current Build:", CurrentBuild)
end
local Branch = ...
loadfile("Flood-GUI/Flood GUI v3")(Branch)
