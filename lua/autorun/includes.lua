if SERVER then
  include "leafjoin/init.lua"
  include "leafjoin/shared.lua"
  AddCSLuaFile "leafjoin/shared.lua"
  AddCSLuaFile "leafjoin/cl_init.lua"
end

if CLIENT then
  include "leafjoin/shared.lua"
  include "leafjoin/cl_init.lua"
end