use framework "AppKit"
use scripting additions

property appTitle : "退出其他App"
property regularAppPolicy : 0

property keptAppNames : {"护眼宝", "Eye Protector", "EyeCare", "CareUEyes", "Huyanbao", "微信", "WeChat", "企业微信", "WeCom", "WXWork", "终端", "Terminal", "Codex", "codex", "Visual Studio Code", "VS Code", "Code", "亮度细调", "Fine Brightness", "退出其他App", "退出其他 App", "Quit Other Apps", "访达", "Finder", "访達"}
property keptBundleIDs : {"com.tencent.xinWeChat", "com.tencent.WeWorkMac", "com.tencent.WeWorkMac.WW", "com.apple.Terminal", "com.microsoft.VSCode", "com.microsoft.VSCodeInsiders", "local.codex.FineBrightness", "com.apple.finder"}

on run
	set quitRequestCount to 0
	set runningApps to current application's NSWorkspace's sharedWorkspace()'s runningApplications()
	
	repeat with runningApp in runningApps
		try
			if ((runningApp's activationPolicy()) as integer) is regularAppPolicy then
				set appName to my textValue(runningApp's localizedName())
				set bundleID to my textValue(runningApp's bundleIdentifier())
				
				if my shouldQuit(appName, bundleID) then
					set requestedQuit to (runningApp's terminate()) as boolean
					if requestedQuit then set quitRequestCount to quitRequestCount + 1
				end if
			end if
		end try
	end repeat
	
	display notification ("已向 " & quitRequestCount & " 个 App 发送退出指令。") with title appTitle
end run

on shouldQuit(appName, bundleID)
	if appName is "" then return false
	
	repeat with keptName in keptAppNames
		if appName is (keptName as text) then return false
	end repeat
	
	if bundleID is not "" then
		repeat with keptBundleID in keptBundleIDs
			if bundleID is (keptBundleID as text) then return false
		end repeat
	end if
	
	return true
end shouldQuit

on textValue(valueRef)
	if valueRef is missing value then return ""
	return valueRef as text
end textValue
