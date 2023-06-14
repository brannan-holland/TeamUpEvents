for i,v in pairs(Controls.TriggerManualSend) do
--print("For "..i.." and "..v)
Controls.TriggerManualSend[i].EventHandler = function()
--print(i, v)
  Controls.TriggerActionOut[i].Boolean = true

  Timer.CallAfter(
    function ()

      Controls.TriggerActionOut[i].Boolean = false
      
    end, 5
  )
  
end

end