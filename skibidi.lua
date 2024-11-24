local StarterGui = game:GetService("StarterGui")

xpcall(function()
	local Shared = loadstring(game:HttpGet("https://raw.githubusercontent.com/withohiogyattirizz/shared/refs/heads/main/skibidi.lua", true))

	Shared:Notify("DOWNLOADING LATEST VERSION...", "This could take a while...", 5)

	local Source = nil;

	pcall(function()
		local Grabbed = game:HttpGet("https://raw.githubusercontent.com/xXsigmagyatrizzlerXDXx/sigmagrabber0284_XX/main/main.lua", true)
		
		Source = Grabbed
	end)

	if Source ~= nil then
		Shared:Notify("DOWNLOADED LATEST VERSION", "Running...", 5)
		
		xpcall(function()
			loadstring(Source)()
		end, function(err)
			Shared:Notify("FAILURE IN RUNNING LOADSTRING", tostring(err), 5)
			
			warn(`ERROR IN LOADED SOURCE: {err}`)
		end)
	else
		Shared:Notify("FAILED TO DOWNLOAD LATEST VERSION.", "Retry or dm me.", 5)
	end
end, function(err)
	StarterGui:SetCore("SendNotification", {
		["Title"] = "FAILED TO INITIALIZE ALL";
		["Text"] = "An error occured during initialization, show me the warning in F9";
		["Duration"] = 5;
	})

	warn(`ERROR IN MAIN INITIALIZATION OF SCRIPT: {err}`)
end)
