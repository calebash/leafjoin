net.Receive("leafjoin/Message", function(len, ply)
  local name = net.ReadString()
  local steamID = net.ReadString()
  local messageType = net.ReadString()
  local message = nil 

  if (messageType == "join") then message = LJ_CONFIG["joinMessage"] end 
  if (messageType == "leave") then message = LJ_CONFIG["leaveMessage"] end

  chat.AddText(
    LJ_CONFIG["prefixColor"], LJ_CONFIG["prefix"],
    LJ_CONFIG["textColor"], name .. " ",
    "(" .. steamID .. ")",
    message
  )
end )

-- Hide the default join/leave
hook.Add("ChatText", "leafjoin/DisableDefault", function(idx, name, text, type)
  if ( type == "joinleave" ) then
		return true
	end
end)