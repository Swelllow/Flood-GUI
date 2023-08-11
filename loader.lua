local LatestBuild = 57.11
local CurrentBuild = tonumber(game:GetService("ReplicatedStorage").Config:GetAttribute("BuildVersion"))
if LatestBuild < CurrentBuild then
  warn("Build mismatch bugs and errors may be caused due to this!")
  warn("Current Build:", CurrentBuild)
end

local Branch = ...
local FloodGUIRepo = "https://raw.githubusercontent.com/ImMejor35/Flood-GUI/"..Branch
if not isfolder("Flood-GUI") then
	makefolder("Flood-GUI")
end
if not isfolder("Flood-GUI/TAS") then
    makefolder("Flood-GUI/TAS")
end

local function import(webpath)
    local filepath = "Flood-GUI"..webpath
    local fullurl = (FloodGUIRepo..webpath):gsub(" ", "%%20")
    if not isfile(filepath) then
        writefile(filepath, game:HttpGet(fullurl))
        return true
    end
    return false
end

local startimport = tick()
if import("/Flood GUI v3") and import("/TAS/TAS Editor") and import("/TAS/TAS Player") and import("/TAS/TAS Record Voiz") then
    print("Imported Flood GUI in "..tostring(tick() - startimport))
end
loadfile("Flood-GUI/Flood GUI v3")()
