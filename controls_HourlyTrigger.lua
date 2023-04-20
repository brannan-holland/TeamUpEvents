local ht_count = props["hourlyTriggers"].Value




table.insert( ctrls,
{
  Name = "hourlyTriggerActionTimeStart",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerActionOutStart",       
  ControlType = "Indicator",
  IndicatorType = "LED",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerOffsetStart",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerOpenCloseStart",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerEventNoStart",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})
table.insert( ctrls,
{
  Name = "hourlyTriggerNotesStart",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "hourlyTriggerEnableStart",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = ht_count,
  UserPin = true,
  PinStyle = "Input",

})

table.insert( ctrls,
{
  Name = "hourlyTriggerActionTimeStop",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerActionOutStop",       
  ControlType = "Indicator",
  IndicatorType = "LED",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerOffsetStop",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerOpenCloseStop",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerEventNoStop",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})
table.insert( ctrls,
{
  Name = "hourlyTriggerNotesStop",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "hourlyTriggerEnableStop",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = ht_count,
  UserPin = true,
  PinStyle = "Input",

})







table.insert( ctrls,
{
  Name = "hourlyTriggerActionTime",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerActionOut",       
  ControlType = "Indicator",
  IndicatorType = "LED",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "hourlyTriggerOffset",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})


table.insert( ctrls,
{
  Name = "hourlyTriggerNotes",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = ht_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "hourlyTriggerEnable",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = ht_count,
  UserPin = true,
  PinStyle = "Input",

})