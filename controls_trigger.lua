local t_count = props["Triggers"].Value




table.insert( ctrls,
{
  Name = "TriggerActionTime",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "TriggerActionOut",       
  ControlType = "Indicator",
  IndicatorType = "LED",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "TriggerOffset",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "TriggerOpenClose",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "TriggerEventNo",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})
table.insert( ctrls,
{
  Name = "TriggerNotes",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = t_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "TriggerEnable",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = t_count,
  UserPin = true,
  PinStyle = "Input",

})
