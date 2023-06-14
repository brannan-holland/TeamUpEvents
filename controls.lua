
  --[[ #include "controls_siteconfig.lua" ]]
  
  --[[ #include "controls_events.lua" ]]

  --[[ #include "controls_trigger.lua" ]]

  
  --[[ #include "controls_hourlytrigger.lua" ]]

  --[[ #include "controls_Subscriptions.lua" ]]

table.insert( ctrls,
{
  Name = "Time",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "None",
  UserPin = false
})

table.insert( ctrls,
{
  Name = "updateTime",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "None",
  UserPin = false
})











