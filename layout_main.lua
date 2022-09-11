Logo = "--[[ #encode "pyek.png" ]]"
table.insert(graphics,{
  Type="Image",
  Image=Logo,
  Position={15,5},
  Size={75,75},
  ZOrder = 1
})

 
 table.insert(graphics,{
    Type = "GroupBox",
    Text = "Events",
    Fill = {200,200,200},
    StrokeWidth = 1,
    Position = {5,5},
    Size = {440,200}
  })
 
  layout["Run"] = {
    PrettyName = "Refresh",
    Style = "Button",
    Position = {200,20},
    Size = {50,16},
    Color = {0,0,0}
  }


  layout["Time"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {340 , 15},
    Size = {80,30},
    HTextAlign = "Center",
    FontSize = 16,
    Font = "Roboto",
    FontStyle="Regular",
    Legend = [[Time]],
    Color = {255,255,255,255},
    OffColor = {0,0,0,0},
    StrokeColor = {105,105,105,255},
    StrokeWidth = 2,
    CornerRadius = 10,
    Padding = 0,
    Margin = 0,
    IsReadOnly = true,
    ZOrder = 28,
  }

  layout["EventName 1"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {20 , 80},
    Size = {100,19},
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
    Position = {120 , 80},
    Size = {100,19},
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
    Position = {220 , 80},
    Size = {100,19},
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

  layout["EventType 1"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {320 , 80},
    Size = {100,19},
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


  layout["EventName 2"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {20 , 100},
    Size = {100,19},
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
    Position = {120 , 100},
    Size = {100,19},
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
    Position = {220 , 100},
    Size = {100,19},
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

  layout["EventType 2"] = {
    Style = "TextBox",
    TextBoxStyle = "Normal",
    Position = {320 , 100},
    Size = {100,19},
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




  table.insert(graphics,{
    Type = "Text",
    Text = "Open Time",
    Position = {120,60},
    Size = {100,19},
    FontSize = 14,
    HTextAlign = "Center"
  })

  table.insert(graphics,{
    Type = "Text",
    Text = "Close Time",
    Position = {220,60},
    Size = {100,19},
    FontSize = 14,
    HTextAlign = "Center"
  })