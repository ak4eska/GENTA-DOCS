-- This is all sample hook!

-- OnVarlist
AddHook("OnVarlist", "x024", function(varlist)
      if varlist[0] == "OnTextOverlay" then
          return true
      end
end)

-- OnTextPacket
AddHook("OnTextPacket", "x024", function(type, packet)
      if packet:find("/hello") then
          logToConsole("Hello from textPacket!")
      end
end)

