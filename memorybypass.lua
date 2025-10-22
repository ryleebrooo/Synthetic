local Stats = game:GetService("Stats")
local Memory = Stats:GetTotalMemoryUsageMb()

local oldStats
oldStats = hookmetamethod(Stats, "__namecall", function(self, ...)
  local trace = debug.traceback()
  local meth = getnamecallmethod()

  if meth == "GetTotalMemoryUsageMb" then
    rconsoleprint("Memory Flag attempt " .. trace .. "\n")
    return Memory + math.random(-2, 2)
  end

  return oldStats(self, ...)
end)
