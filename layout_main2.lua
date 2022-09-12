Logo = "--[[ #encode "pyek.png" ]]"


layout["Run"] = {
  PrettyName = "Refresh",
  Style = "Button",
  Position = {115,50},
  Size = {50,20},
  Color = {0,0,0}
}

layout["Time"] = {
  Style = "TextBox",
  TextBoxStyle = "Normal",
  Position = {100 , 15},
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



evtnum = props["Events"].Value


layout["code"] = {Style = "Text",Position = {0,0},Size = {5,5}}
  for i=1,evtnum do
  
    local ctl_str = tostring(evtnum==1 and "" or " "..i)



    
    layout["EventName"..ctl_str] = {
      PrettyName = string.format("Event %i~Event Name", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {20 , 80+20*(i-1)},
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

    layout["EventOpen"..ctl_str] = {
      PrettyName = string.format("Event %i~Event Open", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {120 , 80+20*(i-1)},
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

    layout["EventClose"..ctl_str] = {
      PrettyName = string.format("Event %i~Event Close", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {220 , 80+20*(i-1)},
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

    layout["EventType"..ctl_str] = {
      PrettyName = string.format("Event %i~Event Type", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {320 , 80+20*(i-1)},
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
  end


 

  graphics = { 
  {
    Type = "Groupbox", 
    Fill = {200,200,200},
    CornerRadius = 8,
    StrokeWidth = 1,
    Position = {5,5},
    Size = {440,100+20*(evtnum-1)},
    ZOrder = 1
  },
  {
    Type="Image",
    Image=Logo,
    Position={15,5},
    Size={75,75},
    ZOrder = 100
  },
  {
    Type = "Text",
    Text = "Open Time",
    Position = {120,60},
    Size = {100,19},
    FontSize = 14,
    HTextAlign = "Center"
  },
  {
    Type = "Text",
    Text = "TeamUp Events",
    Position = {200,19},
    Size = {200,30},
    FontSize = 20,
    HTextAlign = "Left"
  }
  
}