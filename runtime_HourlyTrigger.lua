hourlyTriggerType = {"Open", "Close", "Static", "Disabled"}




ctrlHourlyTriggers = #Controls.hourlyTriggerActionTimeStart
print("Number of Houlry Triggers: "..#Controls.hourlyTriggerActionTimeStart)
hourlyTriggerCount = {}
for i=1, ctrlHourlyTriggers do
  hourlyTriggerCount[i] = 0
end

function setHourlyChoice()
  for v in pairs(hourlyTriggerCount) do
    Controls.hourlyTriggerOpenCloseStart[v].Choices = hourlyTriggerType
    Controls.hourlyTriggerEventNoStart[v].Choices = eventChoices
    Controls.hourlyTriggerOpenCloseStop[v].Choices = hourlyTriggerType
    Controls.hourlyTriggerEventNoStop[v].Choices = eventChoices
  end
end

setHourlyChoice()




function setHourlyColors(trigger, index)
  if trigger.String == "Closed" then
    trigger.Color = ''
  elseif trigger.String =="Disabled" then
    trigger.Color = '#FF7F7F'
  elseif trigger.String == "Error" then
    trigger.Color = '#FF7F7F'
  elseif trigger.String == "" then
    trigger.Color = '#90ee90'
  else
    trigger.Color = '#90ee90'
  end
end






function setHourlyTriggerColors()
  for v in pairs(hourlyTriggerCount) do
    setHourlyColors(Controls.hourlyTriggerActionTimeStart[v], v)
    setHourlyColors(Controls.hourlyTriggerActionTimeStop[v], v)
    setHourlyColors(Controls.hourlyTriggerActionTime[v], v)
  end
end

function hourltTriggerReset()
 for i in pairs(hourlyTriggerCount) do
  Controls.hourlyTriggerEnableStart[i].Boolean = true
  Controls.hourlyTriggerEnableStop[i].Boolean = true
 end
end

function calculateHourlyTrigger(eventType, offset, eventNumber, i, switcher)
  
  if switcher == "hour" then
    if Controls.hourlyTriggerEnable[i].Value == 0.0 then
      return "Disabled"
    end
    
  end
  
  if eventType == "Disabled" then
    return "Disabled"
  end

  if Controls.hourlyTriggerEnableStart[i].Value == 0.0 then
    return "Disabled"
  end


  if eventType == "Static" then
    return offset
  end
  if eventNumber == "Last Event" then
    hourlyEventVarNumber = (#data_tbl.events)
  else
    for i, v in pairs(eventChoices) do
      if eventNumber == v then
        hourlyEventVarNumber = i
    end 
  end
end

--print(eventNumber)
print(hourlyEventVarNumber)
  


  if Controls.EventOpen[hourlyEventVarNumber].String == nil then
    return "Closed"
  end

  if eventType == "Open" then
    eventTime = Controls.EventOpen[hourlyEventVarNumber].String
  end

  if eventType == "Close" then
    eventTime = Controls.EventClose[hourlyEventVarNumber].String
  end
  
  if eventTime == "" then
    return "Closed"
  end

  if type(tonumber(offset)) ~= "number" then
    return "Error"
  end

  mathOffSet = math.abs(offset)
  offsetH = math.floor(mathOffSet/60)
  offsetM = math.floor(mathOffSet - (offsetH*60))
  offSetDateTime = (date(offsetH..":"..offsetM):fmt("%H:%M"))

  if tonumber(offset) < 0 then
    return (date(eventTime) + date(offSetDateTime)):fmt("%I:%M %p")
  else
    return (date(eventTime) - date(offSetDateTime)):fmt("%I:%M %p")
  end
end



function getHourlyTriggerTimes()

  print("Running Hourly Trigger Math")
  for v in pairs(hourlyTriggerCount) do
    Controls.hourlyTriggerActionTimeStart[v].String = calculateHourlyTrigger(Controls.hourlyTriggerOpenCloseStart[v].String, Controls.hourlyTriggerOffsetStart[v].String, Controls.hourlyTriggerEventNoStart[v].String, v, "")
    Controls.hourlyTriggerActionTimeStop[v].String = calculateHourlyTrigger(Controls.hourlyTriggerOpenCloseStop[v].String, Controls.hourlyTriggerOffsetStop[v].String, Controls.hourlyTriggerEventNoStop[v].String, v, "")
    Controls.hourlyTriggerActionTime[v].String = calculateHourlyTrigger("Static", Controls.hourlyTriggerOffset[v].String, "", v, "hour")

  end
  setHourlyTriggerColors()

end

--getHourlyTriggerTimes()

function hourlyCompareTimes()
  for i in pairs(hourlyTriggerCount) do
    if Controls.hourlyTriggerActionOutStart[i].Boolean == (Controls.Time.String == Controls.hourlyTriggerActionTimeStart[i].String) then

      else
    
      Controls.hourlyTriggerActionOutStart[i].Boolean = (Controls.Time.String == Controls.hourlyTriggerActionTimeStart[i].String)


    end

    if Controls.hourlyTriggerActionOutStop[i].Boolean == (Controls.Time.String == Controls.hourlyTriggerActionTimeStop[i].String) then

      else
    
      Controls.hourlyTriggerActionOutStop[i].Boolean = (Controls.Time.String == Controls.hourlyTriggerActionTimeStop[i].String)


    end

    if Controls.hourlyTriggerActionOut[i].Boolean == (os.date("%M") == Controls.hourlyTriggerActionTime[i].String) then
    
    else
  
    Controls.hourlyTriggerActionOut[i].Boolean = (os.date("%M") == Controls.hourlyTriggerActionTime[i].String)
    end
  end

  for i in pairs(hourlyTriggerCount) do
 


    if Controls.hourlyTriggerActionOutStart[i].Boolean == true then

      Controls.hourlyTriggerEnable[i].Boolean = true
      Controls.hourlyTriggerActionTime[i].String = calculateHourlyTrigger("Static", Controls.hourlyTriggerOffset[i].String, "", i, "hour")
      setHourlyColors(Controls.hourlyTriggerActionTime[i], i)
    end

    if Controls.hourlyTriggerActionOutStop[i].Boolean == true then
      Controls.hourlyTriggerEnable[i].Boolean = false
      Controls.hourlyTriggerActionTime[i].String = calculateHourlyTrigger("Static", Controls.hourlyTriggerOffset[i].String, "", i, "hour")
      setHourlyColors(Controls.hourlyTriggerActionTime[i], i)
    end
  end
end




for i,v in ipairs(Controls.hourlyTriggerOpenCloseStart) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerOpenCloseStop) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerEventNoStart) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerEventNoStop) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerEnableStart) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerEnableStop) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerOffsetStart) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerOffsetStop) do
  v.EventHandler = getHourlyTriggerTimes
end

for i,v in ipairs(Controls.hourlyTriggerEnable) do
  v.EventHandler = getHourlyTriggerTimes
end

