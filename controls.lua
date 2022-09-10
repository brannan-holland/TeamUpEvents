table.insert(ctrls, {
  Name = "SendButton",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  Icon = "Power"
})
table.insert(ctrls, {
  Name = "SendButton2",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1,
  UserPin = true,
  PinStyle = "Input",
  Icon = "Power"
})


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
  Name = "PyekArray",        
  ControlType = "Text",  
  Count = 1,
  UserPin = true,
  PinStyle = "Input"
})

table.insert( ctrls,
{
  Name = "TeamUpKey",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "None",
  UserPin = false
})

table.insert( ctrls,
{
  Name = "SiteCode",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "None",
  UserPin = false
})

table.insert( ctrls,
{
  Name = "EventOpen",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = 2,
  PinStyle = "None",
  UserPin = false
})

table.insert( ctrls,
{
  Name = "EventClose",       
  ControlType = "Indicator",
  IndicatorType = "Text",   
  Count = 2,
  PinStyle = "None",
  UserPin = false
})