  table.insert(graphics,{
    Type = "Text",
    Text = "Build Version: "..PluginInfo.BuildVersion,
    Position = {5,70},
    Size = {300,16},
    FontSize = 14,
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Application: "..PluginInfo.Name,
    Position = {5,10},
    Size = {300,16},
    FontSize = 14,
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Version: "..PluginInfo.Version,
    Position = {5,50},
    Size = {300,16},
    FontSize = 14,
    HTextAlign = "Left"
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Company: "..PluginInfo.Author,
    Position = {5,30},
    Size = {300,16},
    FontSize = 14,
    HTextAlign = "Left"
  })

  layout["updateTime"] = {
    Style = "Text",
    TextBoxStyle = "Normal",
    Position = {200 , 70},
    Size = {80,19},
    HTextAlign = "Center",
    FontSize = 12,
    Font = "Roboto",
    FontStyle="Regular",
    Legend = [[]],
    Color = {255,255,255,255},
    OffColor = {0,0,0,0},
    StrokeColor = {105,105,105,255},
    StrokeWidth = 1,
    CornerRadius = 0,
    Padding = 0,
    Margin = 0,
    IsReadOnly = false,
    ZOrder = 7,
  }