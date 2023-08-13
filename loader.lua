local Branch = ...
local FloodGUIRepo = "https://raw.githubusercontent.com/ImMejor35/Flood-GUI/"..Branch

if not isfolder("Flood-GUI") then
    makefolder("Flood-GUI")
elseif not isfolder("Flood-GUI/TAS") then
    makefolder("Flood-GUI/TAS")
elseif not isfolder("Flood-GUI/TAS FILES") then
    makefolder("Flood-GUI/TAS FILES")
end
function import(webpath)
    local filepath = "Flood-GUI"..webpath
    local fullurl = (FloodGUIRepo..webpath):gsub(" ", "%%20")
	writefile(filepath, game:HttpGet(fullurl))
    return true
end

local startimport = tick()
if import("/Flood GUI v3") and import("/TAS/TAS Editor") and import("/TAS/TAS Player") and import("/TAS/TAS Record Voiz") then
    print("Imported Flood GUI in "..tostring(tick() - startimport))
end
loadfile("Flood-GUI/Flood GUI v3")(Branch)
