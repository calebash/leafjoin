util.AddNetworkString("leafjoin/Message")

hook.Add("PlayerInitialSpawn", "leafjoin/Spawn", function(ply)
  local name = ply:Nick()
  local steamID = ply:SteamID()
  local messageType = "join"

  -- Broadcast when a player joins so we can make the join message look pretty
  net.Start("leafjoin/Message")
    net.WriteString(name)
    net.WriteString(steamID)
    net.WriteString(messageType)  
  net.Broadcast()
end)