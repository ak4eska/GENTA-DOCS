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

-- OnTouch
AddHook("OnTouch", "0x24", function(x, y)
      logToConsole("X: ".. x .."Y: ".. y)
end)

