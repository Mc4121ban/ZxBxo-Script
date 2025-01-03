loadstring(game:HttpGet("https://raw.githubusercontent.com/Mc4121ban/ZxBxo-Script/refs/heads/main/New%20Ui.lua"))()
--[[
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local ui = "New" --// Old
function run(ui)
pcall(function()
    OrionLib:Destroy()
end)
    if ui == "New" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Mc4121ban/ZxBxo-Script/refs/heads/main/New%20Ui.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Mc4121ban/ZxBxo-Script/refs/heads/main/Old%20Ui.lua"))()
    end
end
local filename = "whynot.txt"
local function read()
    local success, data = pcall(function()
        return readfile(filename)
    end)
    if success then
        return data
    else
        return nil
    end
end
local function delete()
    local success, message = pcall(function()
        delfile(filename)
    end)
end
local function save(content)
    local success, errorMsg = pcall(function()
        writefile(filename, content)
    end)
end
local a = read()
if a then
run(a)
return
end
local Window = OrionLib:MakeWindow({Name = "Ui Select", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Main:AddDropdown({
	Name = "Ui",
	Default = "New",
	Options = {"New", "Old"},
	Callback = function(Value)
		ui = Value
	end    
})
Main:AddButton({
	Name = "Loaded",
	Callback = function()
      		run(ui)
  	end    
})
Main:AddToggle({
	Name = "Save",
	Default = false,
	Callback = function(Value)
	    if Value then
		save(ui)
	    else
	         delete()
	    end
	end    
})
]]
