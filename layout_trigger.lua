Logo = "--[[ #encode "pyek.png" ]]"



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



local trignum = props["Triggers"].Value


layout["code"] = {Style = "Text",Position = {0,0},Size = {5,5}}
  for i=1,trignum do
  
    local ctl_str = tostring(trignum==1 and "" or " "..i)

    layout["Run"] = {
      PrettyName = "Refresh",
      Style = "Button",
      Position = {200,20},
      Size = {50,16},
      Color = {0,0,0}
    }


    layout["TriggerEnable"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Enable", i),
      Style = "Button",

      Position = {20 , 80+20*(i-1)},
      Size = {19,19},
      Legend = [[]],
      Color = {50,164,49,255},
      OffColor = {0,0,0,0},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      ZOrder = 7,
    }

    layout["TriggerActionTime"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Action Time", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {40 , 80+20*(i-1)},
      Size = {75,19},
      HTextAlign = "Center",
      FontSize = 12,
      Font = "Roboto",
      FontStyle="Regular",
      Legend = [[]],
      Color = {255,255,255,255},
      OffColor = {184,29,19,255},
      StrokeColor = {105,105,105,255},
      StrokeWidth = 1,
      CornerRadius = 0,
      Padding = 0,
      Margin = 0,
      IsReadOnly = true,
      ZOrder = 7,
    }

    layout["TriggerOffset"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Offset", i),
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {140 , 80+20*(i-1)},
      Size = {75,19},
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
      ZOrder = 20,
    }

 

    layout["TriggerOpenClose"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Open/Close", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {240 , 80+20*(i-1)},
      Size = {50,19},
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

    layout["TriggerEventNo"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Event Number", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {340 , 80+20*(i-1)},
      Size = {50,19},
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
    layout["TriggerNotes"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Notes", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {440 , 80+20*(i-1)},
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
    Size = {440,100+20*(trignum-1)},
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
    Text = "Close Time",
    Position = {220,60},
    Size = {100,19},
    FontSize = 14,
    HTextAlign = "Center"
  }
  
}