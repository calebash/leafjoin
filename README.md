# Configuration

To configure this addon, you will need to open the configuration file in your preferred text editor. The configuration file is located in `lua/leafjoin/shared.lua`. Below includes the configuration template:

```lua
-- Prefix color and the prefix itself
LJ_CONFIG["prefixColor"] = Color(255, 255, 255)
LJ_CONFIG["prefix"] = "[PREFIX] "

-- Chat color configuration
LJ_CONFIG["textColor"] = Color(255, 255, 255)
LJ_CONFIG["steamIDColor"] = Color(255, 255, 255)

-- Messages that display when a player joins/leaves
LJ_CONFIG["joinMessage"] = " has joined the server!"
LJ_CONFIG["leaveMessage"] = " has left the server."
```
