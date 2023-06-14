triggerType = {"Open", "Close", "Static", "Disabled"}




ctrlTriggers = #Controls.TriggerActionTime
triggerCount = {}
for i=1, ctrlTriggers do
  triggerCount[i] = 0
end

function setChoice()
  for v in pairs(triggerCount) do
    Controls.TriggerOpenClose[v].Choices = triggerType
    Controls.TriggerEventNo[v].Choices = eventChoices
  end
end

setChoice()

function setColors(trigger, index)
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






function setTriggerColors()
  for v in pairs(triggerCount) do
    setColors(Controls.TriggerActionTime[v], v)
  end
end

function triggerReset()
 for i in pairs(triggerCount) do
  Controls.TriggerEnable[i].Boolean = true
 end
end

function calculateTrigger(eventType, offset, eventNumber, i)
  if eventType == "Disabled" then
    return "Disabled"
  end

  if Controls.TriggerEnable[i].Value == 0.0 then
    return "Disabled"
  end

  if eventType == "Static" then
    return offset
  end
  if eventNumber == "Last Event" then
    if data_tbl.events[1] == nil then

      return "Closed"
      
    end
    eventVarNumber = (#data_tbl.events)
  else
    for i, v in pairs(eventChoices) do
      if eventNumber == v then
      eventVarNumber = i
    end 
  end
end



  if Controls.EventOpen[eventVarNumber].String == nil then
    return "Closed"
  end

  if eventType == "Open" then
    eventTime = Controls.EventOpen[eventVarNumber].String
  end

  if eventType == "Close" then
    eventTime = Controls.EventClose[eventVarNumber].String
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

function getTriggerTimes()

  print("Calculating Triggers")
  for v in pairs(triggerCount) do
    Controls.TriggerActionTime[v].String = calculateTrigger(Controls.TriggerOpenClose[v].String, Controls.TriggerOffset[v].String, Controls.TriggerEventNo[v].String, v)
  end
  setTriggerColors()

end



function CompareTimes()
  
  if Controls.Time.String == Controls.updateTime.String then
    print("Pulling Todays Events")

    Upload()
    
  end

  for i in pairs(triggerCount) do
    if Controls.TriggerActionOut[i].Boolean == (Controls.Time.String == Controls.TriggerActionTime[i].String) then
    
    else
    
      Controls.TriggerActionOut[i].Boolean = (Controls.Time.String == Controls.TriggerActionTime[i].String)
    end
  end

end

for i,v in ipairs(Controls.TriggerOpenClose) do
  v.EventHandler = getTriggerTimes
end
for i,v in ipairs(Controls.TriggerEventNo) do
  v.EventHandler = getTriggerTimes
end
for i,v in ipairs(Controls.TriggerEnable) do
  v.EventHandler = getTriggerTimes
end
for i,v in ipairs(Controls.TriggerOffset) do
  v.EventHandler = getTriggerTimes
end


