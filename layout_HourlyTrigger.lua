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



local hourtrignum = props["hourlyTriggers"].Value


layout["code"] = {Style = "Text",Position = {0,0},Size = {5,5}}
  for i=1,hourtrignum do
  
    local ctl_str = tostring(hourtrignum==1 and "" or " "..i)

    layout["Run"] = {
      PrettyName = "Refresh",
      Style = "Button",
      Position = {115,50},
      Size = {50,20},
      Color = {0,0,0}
    }

    layout["hourlyTriggerActionOutStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action Start", i),
      Style = "LED",

      Position = {11 , 80+60*(i-1)},
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



    layout["hourlyTriggerEnableStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Enable Start", i),
      Style = "Button",

      Position = {30 , 80+60*(i-1)},
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

    layout["hourlyTriggerActionTimeStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action Time Start", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {50 , 80+60*(i-1)},
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

    layout["hourlyTriggerOffsetStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Offset Start", i),
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {125 , 80+60*(i-1)},
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

 

    layout["hourlyTriggerOpenCloseStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Open/Close Start", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {200 , 80+60*(i-1)},
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

    layout["hourlyTriggerEventNoStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Event Number Start", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {275 , 80+60*(i-1)},
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
    layout["hourlyTriggerNotesStart"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Notes Start", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {350 , 80+60*(i-1)},
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

    layout["hourlyTriggerActionOutStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action Stop", i),
      Style = "LED",

      Position = {11 , 100+60*(i-1)},
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



    layout["hourlyTriggerEnableStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Enable Stop", i),
      Style = "Button",

      Position = {30 , 100+60*(i-1)},
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

    layout["hourlyTriggerActionTimeStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action Time Stop", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {50 , 100+60*(i-1)},
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

    layout["hourlyTriggerOffsetStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Offset Stop", i),
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {125 , 100+60*(i-1)},
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

 

    layout["hourlyTriggerOpenCloseStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Open/Close Stop", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {200 , 100+60*(i-1)},
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

    layout["hourlyTriggerEventNoStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Event Number Stop", i),
      Style = "ComboBox",
      TextBoxStyle = "Normal",
      Position = {275 , 100+60*(i-1)},
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
    layout["hourlyTriggerNotesStop"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Notes Stop", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {350 , 100+60*(i-1)},
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
    



    -- Hourly Trigger layout

    layout["hourlyTriggerActionOut"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action", i),
      Style = "LED",

      Position = {11 , 120+60*(i-1)},
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



    layout["hourlyTriggerEnable"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Enable", i),
      Style = "Button",

      Position = {30 , 120+60*(i-1)},
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

    layout["hourlyTriggerActionTime"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Action Time", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {50 , 120+60*(i-1)},
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

    layout["hourlyTriggerOffset"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Offset", i),
      Style = "Text",
      TextBoxStyle = "Normal",
      Position = {125 , 120+60*(i-1)},
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



    layout["hourlyTriggerNotes"..ctl_str] = {
      PrettyName = string.format("Hourly Trigger %i~Notes", i),
      Style = "TextBox",
      TextBoxStyle = "Normal",
      Position = {350 , 120+60*(i-1)},
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
    Size = {520,140+60*(hourtrignum-1)},
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
    Text = "Hourly Triggers",
    Position = {200,19},
    Size = {200,30},
    FontSize = 20,
    HTextAlign = "Left"
  }
  
}