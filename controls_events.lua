local ev_count = props["Events"].Value


table.insert( ctrls,
{
  Name = "EventOpen",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ev_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "EventClose",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ev_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "EventName",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ev_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "ProCount",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ev_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "EventType",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = ev_count,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "Run",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  Icon = "Power"
})
