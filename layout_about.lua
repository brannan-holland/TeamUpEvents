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