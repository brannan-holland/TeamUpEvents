local CurrentPage = PageNames[props["page_index"].Value]
if CurrentPage == "Control" then
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Control",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {200,100}
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Say Hello:",
    Position = {10,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["SendButton"] = {
    PrettyName = "Buttons~Send The Command",
    Style = "Button",
    Position = {105,42},
    Size = {50,16},
    Color = {0,0,0}
  }
elseif CurrentPage == "Test" then
  -- TBD
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Events",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {200,100}
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Setup Test:",
    Position = {10,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["SiteCode"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {10 , 20},
    Size = {100,20},
    HTextAlign = "Center",
    FontSize = 12,
    Font = "Roboto",
    FontStyle="Regular",
    Legend = [[Time]],
    Color = {255,255,255,255},
    OffColor = {0,0,0,0},
    StrokeColor = {105,105,105,255},
    StrokeWidth = 1,
    CornerRadius = 0,
    Padding = 0,
    Margin = 0,
    IsReadOnly = true,
    ZOrder = 28,
  }
  layout["TeamUpKey"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {10 , 40},
    Size = {100,20},
    HTextAlign = "Center",
    FontSize = 12,
    Font = "Roboto",
    FontStyle="Regular",
    Legend = [[Time]],
    Color = {255,255,255,255},
    OffColor = {0,0,0,0},
    StrokeColor = {105,105,105,255},
    StrokeWidth = 1,
    CornerRadius = 0,
    Padding = 0,
    Margin = 0,
    IsReadOnly = true,
    ZOrder = 28,
  }
elseif CurrentPage == "SetupTest" then
  -- TBD
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Control",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {200,100}
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Setup Test:",
    Position = {10,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })
  layout["SendButton2"] = {
    PrettyName = "Buttons~Send The Command",
    Style = "Button",
    Position = {105,42},
    Size = {50,16},
    Color = {0,0,0}
  }

elseif CurrentPage == "Main" then
  -- TBD
  table.insert(graphics,{
    Type = "GroupBox",
    Text = "Events",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {400,200}
  })
  table.insert(graphics,{
    Type = "Text",
    Text = "Setup Test:",
    Position = {10,42},
    Size = {90,16},
    FontSize = 14,
    HTextAlign = "Right"
  })

  layout["Time"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {20 , 20},
    Size = {100,20},
    HTextAlign = "Center",
    FontSize = 12,
    Font = "Roboto",
    FontStyle="Regular",
    Legend = [[Time]],
    Color = {255,255,255,255},
    OffColor = {0,0,0,0},
    StrokeColor = {105,105,105,255},
    StrokeWidth = 1,
    CornerRadius = 0,
    Padding = 0,
    Margin = 0,
    IsReadOnly = true,
    ZOrder = 28,
  }

  layout["PyekArray"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {70 , 160},
    Size = {121,19},
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

  layout["EventOpen 1"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {40 , 80},
    Size = {121,19},
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
  layout["EventClose 1"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {40 , 100},
    Size = {121,19},
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

  layout["EventOpen 2"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {40 , 120},
    Size = {121,19},
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
  layout["EventClose 2"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {40 , 140},
    Size = {121,19},
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

elseif CurrentPage == "About" then

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
end