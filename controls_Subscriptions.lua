

table.insert( ctrls,
{
  Name = "subSiteConfigLED",       
  ControlType = "Indicator",
  IndicatorType = "LED",   
  Count = 1,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "subSiteConfigSendID",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "subSiteConfigSendString",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "subSiteConfigReceiveID",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "Output",
  UserPin = true
})

table.insert( ctrls,
{
  Name = "subSiteConfigReceiveString",       
  ControlType = "Text",
  IndicatorType = "Text",   
  Count = 1,
  PinStyle = "Output",
  UserPin = true
})

table.insert(ctrls, {
  Name = "subSiteConfigToggle",
  ControlType = "Button",
  ButtonType = "Toggle",
  Count = 1,
  UserPin = false,
  PinStyle = "None",

})

table.insert(ctrls, {
  Name = "subSiteConfigSend",
  ControlType = "Button",
  ButtonType = "Momentary",
  Count = 1
})


