Logo = "--[[ #encode "pyek.png" ]]"



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



local trignum = props["Triggers"].Value


layout["code"] = {Style = "Text",Position = {0,0},Size = {5,5}}
  for i=1,trignum do
  
    local ctl_str = tostring(trignum==1 and "" or " "..i)

    layout["Run"] = {
      PrettyName = "Refresh",
      Style = "Button",
      Position = {115,50},
      Size = {50,20},
      Color = {0,0,0}
    }

    layout["TriggerActionOut"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Action", i),
      Style = "LED",

      Position = {11 , 80+20*(i-1)},
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



    layout["TriggerEnable"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Enable", i),
      Style = "Button",

      Position = {30 , 80+20*(i-1)},
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
      Position = {50 , 80+20*(i-1)},
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
      Position = {125 , 80+20*(i-1)},
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
      Position = {200 , 80+20*(i-1)},
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
      ZOrder = 7,
    }

    layout["TriggerEventNo"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Event Number", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {275 , 80+20*(i-1)},
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
      ZOrder = 7,
    }
    layout["TriggerNotes"..ctl_str] = {
      PrettyName = string.format("Trigger %i~Notes", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {350 , 80+20*(i-1)},
      Size = {150,19},
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
    Size = {520,100+20*(trignum-1)},
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
    Text = "Event Triggers",
    Position = {200,19},
    Size = {200,30},
    FontSize = 20,
    HTextAlign = "Left"
  }
  
}