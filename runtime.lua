status = Controls.status
-- Required
rapidjson = require("rapidjson")
date = require("date")



-- Decode Site Var
function decodeSiteVar()
  siteVar = rapidjson.decode(Controls.PyekArray.String)
  Controls.SiteCode.String = siteVar.site
  Controls.TeamUpKey.String = siteVar.teamupkey
  tz = siteVar.timezone
end

-- CLOCK --
CLOCK = Timer.New();
CLOCK.EventHandler = function()
  clock = os.date("%I:%M %p");
  Controls.Time.String = clock
  --print(clock)
end;
CLOCK:Start(1);

-- Pull Team Up Events
function Upload()

  HttpClient.Download { Url = "https://api.teamup.com/"..siteVar.teamupuser.."/events?subcalendarId[]="..siteVar.teamupcal, Headers = { ["Teamup-Token"] = siteVar.teamupkey } , Timeout = 30, EventHandler = done }
  
end
  
function statusChange(status, HTTPcode)
  if HTTPcode == 200 -- OK
    then status.Value = 0
  end
  if HTTPcode == 0 -- Bad URL/Timeout
    then status.Value = 2
  end
  if HTTPcode == 400 -- Invalid Response
    then status.Value = 1
  end
  if HTTPcode == 404 -- Not found
    then status.Value = 2
  end
  if HTTPcode == 403 -- Authentication Error
    then status.Value = 2
  end
  if HTTPcode == 410 -- Channel is archived
    then status.Value = 2
  end
  if HTTPcode == 500 -- Server error, not your problem
    then status.Value = 2
  end
end


function done(tbl, code, data, err, headers)
  print(string.format( "HTTP response from '%s': Return Code=%i; Error=%s", tbl.Url, code, err or "None" ) )
  --statusChange(status, code)
  if code == 200 then   
    data_tbl = rapidjson.decode(data)
    print(data)

    for i,v in pairs(data_tbl.events) do
      Controls.EventOpen[i].String = (date(v.start_dt) - date(tz)):fmt("%I:%M %p")
      Controls.EventClose[i].String = (date(v.end_dt) - date(tz)):fmt("%I:%M %p")
    end

  end
end
-- Run Time

decodeSiteVar()
Upload()
-- Event Handlers

Controls.PyekArray.EventHandler = decodeSiteVar